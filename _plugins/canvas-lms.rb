require 'lms_api'

class Authentication
  @@token = "string"

  def initialize(token)
    @token = token
  end

  def token()
    return @token
  end
end

class CanvasSyncer
  @api
  @course_id
  @modules
  @assignments

  def initialize()
    @course_id = ENV['CANVAS_COURSE_ID']
    auth = Authentication.new(ENV['CANVAS_TOKEN'])
    LMS::Canvas.auth_state_model = Authentication
    @api = LMS::Canvas.new(ENV['CANVAS_BASE_URL'], auth)
  end

  def getAllAssignments()
    if (!@assignments)
      params = {
        course_id: @course_id,
        all_dates: true,
      }
      url = LMS::Canvas.lms_url("LIST_ASSIGNMENTS_ASSIGNMENTS", params)
      @assignments = @api.api_get_all_request(url)
    end
    return @assignments
  end

  def getModuleContent(moduleID)
    params = {
      module_id: moduleID,
      course_id: @course_id,
      all_dates: true,
    }
    url = LMS::Canvas.lms_url("LIST_MODULE_ITEMS", params)
    return @api.api_get_all_request(url)
  end

  def getAllModules()
    if (!@modules)
      params = {
        course_id: @course_id,
        all_dates: true,
      }
      url = LMS::Canvas.lms_url("LIST_MODULES", params)
      @modules = @api.api_get_all_request(url)
    end
    return @modules
  end

  def getOrCreateModuleByName(name, sort_order)
    self.getAllModules().each do |mod|
      if (mod['name'] == name)
        return mod['id']
      end
    end
    params = {
      course_id: @course_id,
      module: { name: name, position: sort_order }
    }
    url = LMS::Canvas.lms_url("CREATE_MODULE", params)
    print "Canvas importer: Creating canvas module " + name + "\n"
    ret = @api.api_post_request(url, module: { name: name, position: sort_order })
    return ret['id']
  end

  def createModuleItem(modID, type, title, position, indent, url)
    module_item = {
      title: title,
      type: type,
      position: position,
      indent: indent,
      published: true,
      content_id: "none"
    }
    if (url != nil)
      module_item['new_tab'] = true
      module_item['external_url'] = url
    end
    params = {
      course_id: @course_id,
      module_id: modID,
      module_item: module_item
    }
    url = LMS::Canvas.lms_url("CREATE_MODULE_ITEM", params)
    print "Creating module item '" + title + "'\n"
    et = @api.api_post_request(url, module_item: module_item)
  end

  #https://canvas.instructure.com/doc/api/modules.html#method.context_module_items_api.create
  $moduleComponents = {}
  $moduleComponents['title'] = { type: "SubHeader" }
  $moduleComponents['pdf'] = { type: "ExternalURL", name: "Slides (PDF)" }
  $moduleComponents['ppt'] = { type: "ExternalURL", name: "Slides (PPT)" }

  def syncModule(modName, sort_order, contents, tutorials, siteBaseURL, pageURL)
    modID = getOrCreateModuleByName(modName, sort_order)
    canvasItems = getModuleContent(modID)
    ctr = 1
    contents.each do |ourItem|
      ourItem.each_key do |itemKey|
        if itemKey == "title"
          canvasIdx = canvasItems.index { |item| item['title'] == ourItem['title'] }
          if canvasIdx != nil
            # TODO - is there anything here to update/check?
          else
            #create the text item
            self.createModuleItem(modID, "SubHeader", ourItem['title'], ctr, 0, nil)
          end
        else
          file = CGI.escape ourItem[itemKey]
          url = siteBaseURL + "/slides-" + itemKey + "/" + file
          canvasIdx = canvasItems.index { |item| item['external_url'] == url }
          if canvasIdx != nil
            cItem = canvasItems[canvasIdx]
            # TODO - is there anything here to update/check?
          else
            #create the url link
            self.createModuleItem(modID, "ExternalURL", $moduleComponents[itemKey][:name], ctr, 1, url)
          end
        end
        ctr = ctr + 1
      end
      # also add a link to the module on the webpage
      if (pageURL[0] == '/')
        pageURL = siteBaseURL + pageURL
      end
      canvasIdx = canvasItems.index { |item| item['external_url'] == pageURL }
      if canvasIdx == nil
        self.createModuleItem(modID, "ExternalURL", "Additional content on the course webpage", ctr, 1, pageURL)
      end
      ctr = ctr + 1;
    end
  end

  def syncAssignment(title, dueDate, contents, baseURL, lastModifiedAt, permalink)
    assignmentIdx = getAllAssignments().index { |assignment| assignment['name'] == title }
    dueDate = DateTime.parse(dueDate)
    baseURL = baseURL[0..baseURL.rindex('/')]
    contents = '<div class="fs-1 text-right fw-300">This content was last updated at:' + lastModifiedAt + '; you may view it with native formatting <a target="_blank" href="' + permalink+ '">on the course website</a></div>' + contents

    contents = contents.gsub(/<a href="\//, '<a target="_blank" href="' + baseURL + '/')
    assignment = {
      name: title,
      description: contents,
      due_at: dueDate,
      course_id: @course_id,
      published: true
    }
    if assignmentIdx == nil
      # create assignment...
      params = {
        course_id: @course_id,
        assignment: assignment
      }
      url = LMS::Canvas.lms_url("CREATE_ASSIGNMENT", params)
      print "Creating assignment on Canvas:" + title + "\n"
      ret = @api.api_post_request(url, assignment: assignment)
    else
      canvasAssignment = @assignments[assignmentIdx]
      dueDate = dueDate.to_time
      canvasDueDate = Time.parse(canvasAssignment['due_at'])
      cleanContent = canvasAssignment['description']

      cleanContent = cleanContent.gsub(/<link rel="stylesheet" href="https:\/\/instructure-uploads.s3.amazonaws.com\/([^"]+)">/, '')
      cleanContent = cleanContent.gsub(/<script src="https:\/\/instructure-uploads.s3.amazonaws.com\/([^"]+)"><\/script>/, '')
      if (cleanContent != contents || canvasDueDate != dueDate)
        params = {
          id: canvasAssignment['id'],
          course_id: @course_id,
          assignment: assignment
        }
        print "Canvas importer: change detected, updating assignment " + title + "\n"
        url = LMS::Canvas.lms_url("EDIT_ASSIGNMENT", params)
        ret = @api.api_put_request(url, assignment: assignment)
      end
    end
  end

  def getHomePage()
    params = { course_id: @course_id }
    url = LMS::Canvas.lms_url("SHOW_FRONT_PAGE_COURSES", params)
    begin
      return @api.api_get_request(url)
    rescue => error
      return {body: ""}
    end
  end

  def syncHomePage(content, baseURL, permalink, lastModifiedAt)
    home = getHomePage()
    content = '<div class="fs-1 text-right fw-300">This content was last updated at:' + lastModifiedAt + '; you may view it with native formatting <a target="_blank" href="' + permalink+ '">on the course website</a></div>' + content
    content = content.gsub(/<a href="\//, '<a target="_blank" href="' + baseURL + '/')

    existing_home = home.body
    existing_home = existing_home.gsub(/<link rel="stylesheet" href="https:\/\/instructure-uploads.s3.amazonaws.com\/([^"]+)">/, '')
    existing_home = existing_home.gsub(/<script src="https:\/\/instructure-uploads.s3.amazonaws.com\/([^"]+)"><\/script>/, '')
    if(existing_home != content)
      params = {course_id: @course_id}
      url = LMS::Canvas.lms_url("UPDATE_CREATE_FRONT_PAGE_COURSES", params)
      wiki_page = {body: content}
      @api.api_put_request(url, wiki_page: wiki_page)
    end
  end
end

if ENV['CANVAS_COURSE_ID'] && ENV['CANVAS_TOKEN'] && ENV['CANVAS_BASE_URL']
  canvasSyncer = CanvasSyncer.new()

  @moduleCount = 1;
  Jekyll::Hooks.register :pages, :post_render do |page|
    site = page.site
    baseURL = site.config['url'] # + site.baseurl
    permalink =  site.config['url'] + site.baseurl + page.url
    if (page.name == "index.md" && page.dir == "/")
      canvasSyncer.syncHomePage(page['content'], baseURL, permalink, page['last_modified_at'].to_s)
    elsif (page['layout'] == 'assignment')
      if(page['due_date'] == nil)
        print "Canvas importer: no due date for assignment " + page['title'] + ": skipping\n"
        next
      end
      canvasSyncer.syncAssignment(page['title'], page['due_date'], page['content'], baseURL, page['last_modified_at'].to_s, permalink)
    elsif (page['layout'] == 'module')
      if(page['lessons'] == nil)
        print "Canvas importer: no lessons for module " + page['title'] + ": skipping\n"
        next
      end
      canvasSyncer.syncModule(page['title'], @moduleCount, page['lessons'], page['tutorials'], baseURL + site.baseurl, page.permalink())
      @moduleCount = @moduleCount + 1
    end
  end
else
  print "NOT syncing to Canvas. If you would like to sync to Canvas, set the environmental variables: CANVAS_COURSE_ID, CANVAS_TOKEN, CANVAS_BASE_URL\n"
end

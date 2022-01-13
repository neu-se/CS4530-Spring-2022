#!/bin/sh
ESCAPED_URL=$(printf '%s\n' "$DEPLOY_URL" | sed -e 's/[\/&]/\\&/g')

sed -i -e "s/^url:.*$/url: '$ESCAPED_URL'/g" _config.yml
bundle exec jekyll build -b ''
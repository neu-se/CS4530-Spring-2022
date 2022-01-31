## **Part 2: Completing the TownService responsibilities** 

### **Task 2.1: Track conversation participants** 

Each of the users connected to a town track which conversation area (if any) they are in, and send this information to the `CoveyTownController`. 

Every user in the town, if part of a conversation sends their information to `CoveyTownController` .

Thus, `CoveyTownController` needs to have a track of users in each conversation. 

In order to do so, `CoveyTownController`  has a method called `updatePlayerLocation` which is invoked everytime a player changes his location. 

#### **Objective for the task :**

Uopn implementing this method, the list  `_conversationAreas` (in town controller) must track and reflect the players’ movement by updating the `occupantsByID` property on any effected conversation areas.

For any conversation areas updated, you must emit a `onConversationAreaUpdated` event.

*Note :* You might need to send multiple `onConversationAreaUpdated` event when the user exits and enters a different conversation area. Same user cannot be in different areas at the same time so make sure you update “exit” before updating “enter”.

📝 Testing : You can run this test with the command, 

`npm test -- -t 'CoveyTownController updatePlayerLocation'`  

and you might also consider extending it.

### **Task 2.2: Remove participants from conversation when they disconnect** 

1. When a player disconnects from the server, any resources used by that player must be cleaned up by the `CoveyTownController`’s `destroySession` method.
1. Update `destroySession` to remove disconnected players from any conversation area that they had been a participant in and emit any `onConversationAreaUpdated` events as necessary.

📝 Testing : There are no sanity tests available, you can test it manually by writing your own testcases that test this behaviour. 

### **Task 2.3: Automatically end a conversation when it’s unoccupied**

1. When a conversation area is unoccupied, it should show a default greeting message, encouraging any new user to set a conversation topic. Hence, we need some logic to destroy a conversation when it has zero occupants. 
2. When the last player leaves a conversation area, emit the `onConversationAreaDestroyed` event to each of the town controller’s listeners (*Do not* emit a `onConversationAreaUpdated`).
3. When emitting an `onConversationAreaDestroyed` message, the `occupantsByID` array should be set to an empty array.

📝 Testing : There are no sanity tests available, you can test it manually by writing your own testcases that test this behaviour.

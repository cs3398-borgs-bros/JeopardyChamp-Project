# CS3398: Software Engineering - Spring 2019
This project was constructed over a 2 month period in order to educate us on the process of working as a team in the software development field. We were asked report and demo our project in front of our professor and peers to help simulate what it would be like in the industry. We were able to learn the challenges of working and communicating efficiently as a team, as well as how to overcome the challenges, when creating the software. Although this project is not completed, the process of creating the game as a team helped to teach us many lessons about software engineering. 


# Jeopardy Champ! 

The Borgs Bros team is creating a game that will be the hottest learning tool on the market so that institutes of higher education can provide a more interactive learning experience that that bridges the gap between students and faculty.

![Logo](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/download.png)

To anyone looking to enhance their in class experience and keep students engaged, we have the answer for you! We as team of CS Students understand that it can sometimes be hard for the professor to get their students attention and focus on the lecture material. This is where *Jeopardy Champ!* comes into play! With this tool you will be able to put students head-to-head by solving problems over what was just lectured and/or to ensure they are paying attention all while having fun. The game consists of multiple categories of unknown questions with low and high point value than can be selected by the team of participants in play. We aim to have a variety of features that will be visually appealing and satisfying to our users.

[Jeopardy Champ!](https://jeopardy-champ.herokuapp.com/)

The project can be viewed in the link above. The project still requires some work for it to be fully functional. Some of the features that need to be implemented include the feature of the voting system to select the correct answer by a team as well as some improvements on the visuals and visibility of the elements in the project.

## Sprint 3 Review and Retrospective - 4/30/19

Walter: I establish the layout on how the user would interact with the game via buttons. [JSP File](JeopardyChamp-Project/src/main/java/com/borgs/websocket/index.jsp) . I also implemented the host log in and user response layout but this was later removed an implemented with a improved version.

Carter: one feature is that i helped implement the multiplayer aspect 
for the jeopardy game, helped with the building of the room for the users, developing the server interaction with user and also join and implemented sendQuestionOption, to help send the question choices. JeopardyChamp-Project/src/main/java/com/borgs/websocket/Room.java
JeopardyChamp-Project/src/main/java/com/borgs/websocket/index.jsp 

Daniel: I was able to separate the plugins and add comments to indicate the section's purpose in the game scripts and html to keep the project manageable. I also was able to create a functioning implementation of a websocket interaction with the server, which allowed for the multiplayer interaction with the server. [JSP and Javascript files](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game), [Java Files](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/java/com/borgs/websocket)

Luke: researched what modifications could made to the CSS and the current bank of available jeopardy questions

Elvin: added additional css for buttons, layout config, and user input.[style.css](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/styles.css)

### Retrospective

[Sprint 3 - Retrospective](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/docs/Borgs_Retrospective%20-%20Sprint%203.pptx)





## Sprint 2 Review and Retrospective - 4/9/19

### Feature/Accomplishment:
Walter:  I created the question bank for each statment. This can be found under JeopardyChamp-Project/docs/Question bank or at [Question bank.xlsx](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/docs/Question%20bank.xlsx), these questions can be seen in the game in the form of buttons for the user to click on. The implementation of these buttons with the question can be seen under JeopardyChamp-Project/src/main/webapp/Game/index.jsp or at [index.jsp](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/index.jsp)

Carter: Did research on how to establish a game lobby to make our webpage dynamic and have multiplayer acess. Tested and implemented the game lobby itself. I modified the [GameEndpoint.java](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/java/com/borgs/websocket/GameEndpoint.java) so the host and join features are added to the socket. My research resources is uploaded and is called GameLobbyResearch.txt. 

Daniel: I was able to update the extensions/dependencies to later builds. Dependencies can be found here: [pom.xml](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/pom.xml). I was also able to add a basic main menu with scripting to progress to the lobby and game, but coding for the menu may need to be altered for lobby functionality. The code for the menu can be found at [index.jsp](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/index.jsp) _(see mainmenu. hostgame, joingame, options)_ and [game.js](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/game.js) _(see menu functions)_

Luke: Able to apply modifications to the CSS. Researched on modifiying the scripts of the web application.

Elvin: CSS modifications and reserch on automated testing for gui.[sylesheet.css](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/StyleSheet.css)

### Project Status/Next Step:
Walter: My next step would be testing and implementation of multiplayer within the game.

Carter:My next step is to further research clinet-server interaction and try to find the best method to implement the client-server 
communication so the project is multiplayer. 

Daniel: Fix bugs with menu and work on functionality of lobbies and multiplayer. Work on database implementation.

Luke: Implement further changes to the webapp to improve functionality.

Elvin: Continue to improve CSS to provide a more functional and user friendly interface. Debug script errors. Begin to implement automated regression testing.

### Retrospective

[Sprint 2 - Retrospective](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/docs/Borgs_Retrospective%20-%20Sprint%202.pptx)


# Jeopardy Champ! 

The Borgs Bros team is creating a game that will be the hottest learning tool on the market so that institutes of higher education can provide a more interactive learning experience that that bridges the gap between students and faculty.

![Logo](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/download.png)

To anyone looking to enhance their in class experience and keep students engaged, we have the answer for you! We as team of CS Students understand that it can sometimes be hard for the professor to get their students attention and focus on the lecture material. This is where *Jeopardy Champ!* comes into play! With this tool you will be able to put students head-to-head by solving problems over what was just lectured and/or to ensure they are paying attention all while having fun. The game consists of multiple categories of unknown questions with low and high point value than can be selected by the team of participants in play. We aim to have a variety of features that will be visually appealing and satisfying to our users.

Currently, the project can currently be run/built. However, the current project is unstable and has not been modified to meet the project's goal. Enhancements are still underway.

[Jeopardy Champ!](https://jeopardy-champ.herokuapp.com/)

## Sprint 2 Review and Retrospective - 4/9/19

### Feature/Accomplishment:
Walter:  I created the question bank for each statment. This can be found under JeopardyChamp-Project/docs/Question bank or at [Question bank.xlsx](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/docs/Question%20bank.xlsx), these questions can be seen in the game in the form of buttons for the user to click on. The implementation of these buttons with the question can be seen under JeopardyChamp-Project/src/main/webapp/Game/index.jsp or at [index.jsp](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/index.jsp)

Carter: Did research on how to establish a game lobby to make our webpage dynamic and have multiplayer acess. Tested and implemented the game lobby itself. I modified the [GameEndpoint.java](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/java/com/borgs/websocket/GameEndpoint.java) so the host and join features are added to the socket. My research resources is uploaded and is called GameLobbyResearch.txt. 

Daniel: I was able to update the extensions/dependencies to later builds. Dependencies can be found here: [pom.xml](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/pom.xml). I was also able to add a basic main menu with scripting to progress to the lobby and game, but coding for the menu may need to be altered for lobby functionality. The code for the menu can be found at [index.jsp](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/index.jsp) _(see mainmenu. hostgame, joingame, options)_ and [game.js](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/src/main/webapp/Game/game.js) _(see menu functions)_

Luke: 

Elvin: 

### Project Status/Next Step:
Walter: My next step would be testing and implementation of multiplayer within the game.

Carter:

Daniel: Fix bugs with menu and work on functionality of lobbies and multiplayer. Work on database implementation.

Luke: 

Elvin: 

### Retrospective

[Sprint 2 - Retrospective](https://github.com/cs3398-borgs-bros/JeopardyChamp-Project/blob/master/docs/Borgs_Retrospective%20-%20Sprint%202.pptx)


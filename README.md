# pong-gamemakerstudio2
# Installing
Before attempting to run the game, you must first install a program known as GameMaker Studio 2, which was created by YoYo Games. The free trial is fine, but I believe it may require an account to be made. After installing it and downloading the game itself, you need to start GameMaker, click open on the main screen, then open the .yyp file in the root folder. After opening the project file, simply click on the “Build” button at the top of the screen, followed by “Run.” This will build and compile the game, allowing it to be played. I am unable to test this, but I believe that it should run fine on both Windows and Mac computers.
# Controls
“W” – Move left paddle up

“S” – Move left paddle down

“Up arrow key” – Move right paddle up

“Down arrow key” – Move right paddle down
# Gameplay
The game was created as an assignment for CS339 – Game Design at Jacksonville State University in Alabama. The goal of the project was to emulate the original arcade game Pong by Atari from 1972.

From a gameplay and design standpoint, this game is much simpler than my other projects, including the Mega Man project. The way directions work in GameMaker Studio 2 is that they are similar to the Cartesian plane. Zero degrees is right, 90 is up, 180 is left, 270 is down, and 360 degrees is equal to 0. This method of movement plays heavily into how the ball moves in this game, as it either moves in the previously mentioned degrees or in the middle diagonal between them, such as 45 degrees for 0 and 90. 

The game works like this; at the beginning of the game, the ball either goes right or left. The goal of the game is to move your paddle and try to knock the ball into the goal of your opponent, like a mix between table tennis and soccer. Another aspect of the game is that gravity does not affect the ball; once the ball is hit, it will travel in a specific direction until being hit by another paddle, hitting a wall, or going into a goal. The game keeps going until either the left or right player gets a score higher than 9 points, at which point it will restart.
# Design
I designed each of the sprites (the artwork and animations) in the game, which I intended to look like the original arcade classic. I also reused sprites rather than draw new ones; the left paddle is the same in graphics as the right paddle, as well as the top and bottom walls being the same.

The actual programming language that is used to code the game is known as GameMaker Language, or GML, which was created by YoYo Games. While it is different in some ways, it is very similar to Java in its syntax.

I will explain how the game works in detail; when the game begins, the ball starts moving either 0 degrees or 180 degrees, which is either the left or the right, at a speed of 8 pixels per frame. When the ball hits either the left or right paddle at any time during gameplay, a variable named “leftorright” is changed to either “left” or “right,” depending on which one came into contact with it. Then, the ball chooses another direction to go, but it is different for each paddle; if it just hit the left paddle, then it can either go to the up-right or bottom-right, while if it just hit the right paddle, then it can either go to the up-left or bottom-left. While the ball is travelling, it will definitely hit walls, which is where the “leftorright” variable comes into play. If the ball was just hit by the left paddle, then if the ball hits the top wall, it will change direction to 315 degrees, the bottom-right, and continue its journey towards the right side of the screen. If the ball was just hit by the right paddle and hits the top wall, it will change direction to 225 degrees, bottom-left, and continue towards the left. Similar to this is the bottom wall; if “leftorrright” equals “left” when it hits the wall, the direction will change to the up-right and it will continue moving. If “leftorright” is “right” when it hits, the direction will change to the up-left and it will keep going to the left side of the screen.

The score is kept by two global variables named “leftpoints” and “rightpoints” which increase when the ball hits a specific goal. This goal is kept off-screen behind each of the paddles. When the ball hits the left goal, “rightpoints” is increased by one, checked to see if it is higher than 9 yet, and if not, the ball jumps to the middle of the screen and chooses direction between left and right again before starting a new round. If “rightpoints” is higher than 9, then a dialog box pops up stating that player 2 (the right player) wins, before the game starts again. The same is true for the left goal and “leftpoints;” when the ball hits the right goal, that variable increases and is checked to see if it is higher than 9, and if it is not, then the ball is teleported to the middle of the screen before choosing between 0 and 180 degrees and starting to move. If it is higher than 9, a dialog box comes up saying that player 1 (the left player) wins, and when the box is closed out, the game is restarted.

The controls of the game are intended to be simple as well; pressing and holding the “W” key causes the left paddle to move up at a speed of 5 pixels a frame, while pressing and holding “S” causes the left paddle to move down at the same speed. When either of these keys is stops being pressed, the paddle stops moving as its speed is set to 0. The same control scheme is done with the up and down arrow keys, except with the right paddle instead.

The final object is the scoreboard which sets “leftpoints” and “rightpoints” to 0 when the game starts and draws them to the screen in the top-left and top-right corners, along with changing them as the score changes throughout the game.
# Credits
All of the code in the project was written by me, Adam Parker, along with all of the sprites.

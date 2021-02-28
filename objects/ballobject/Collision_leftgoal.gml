global.rightpoints++;
if(global.rightpoints > 9){
	show_message("Player 2 wins!");
	game_restart();
}
x = 320;
y = 224;
direction = choose(0,180);
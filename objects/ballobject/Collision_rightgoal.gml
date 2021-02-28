global.leftpoints++;
if(global.leftpoints > 9){
	show_message("Player 1 wins!");
	game_restart();
}
x = 320;
y = 224;
direction = choose(0,180);
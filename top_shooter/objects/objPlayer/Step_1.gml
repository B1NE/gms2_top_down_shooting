if (keyboard_check_pressed(ord("9")))
{
	global.game_speed -= 0.1;
}
else if(keyboard_check_pressed(ord("0")))
{
	global.game_speed += 0.1;
}
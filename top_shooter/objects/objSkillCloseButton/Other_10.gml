var before_speed = 0;
with(zui_get_parent())
{
	before_speed = before_game_speed;
	zui_destroy();
}

global.game_speed = before_speed;
if(entity_data[? e_cur_data.hp] <= 0 && global.game_speed > 0)
{
	global.game_speed = 0;
	with (zui_main()) 
	{
		with(zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objResultUI))
		{
		
		}
	}
}
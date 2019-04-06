
if(debug_mode)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	draw_text(32, 32, "FPS : " + string(cur_fps));

	var height = 64;
	var spancing = 15;
	var count = 0;
	
	show_debug_overlay(true);
	
	draw_text(32, height + spancing * count++, "1. respawn_level : " + string(EnemySpawner.cur_game_level));
	draw_text(32, height + spancing * count++, "2. respawn_remain_time : " + string(EnemySpawner.cur_respawn));
	draw_text(32, height + spancing * count++, "3. game_speed : " + string(global.game_speed));
	draw_text(32, height + spancing * count++, "before : " + string(PlayerLevelManager.before_target_exp));
	draw_text(32, height + spancing * count++, "nexttt : " + string(PlayerLevelManager.next_target_exp));
	draw_text(32, height + spancing * count++, "cureee : " + string(PlayerLevelManager.cur_exp));

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}
else
{
	//show_debug_overlay(true);
}
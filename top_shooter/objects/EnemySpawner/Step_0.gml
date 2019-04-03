

cur_game_time += delta_time * 0.000001 * global.game_speed;

if(cur_game_time >= hudle_game_time)
{
	cur_game_time = 0;
	cur_game_level++;
	next_respawn *= 0.9;
	cur_respawn = next_respawn;
}

cur_respawn -= global.game_speed;
if(cur_respawn < 0)
{
	cur_respawn = next_respawn;
	enemy_hole_spawn(cur_game_level);
}




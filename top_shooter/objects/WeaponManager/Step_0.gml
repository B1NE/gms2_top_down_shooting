
var count = ds_list_size(weapon_list);
for(var i = 0;i < count;++i)
{
	with(weapon_list[| i])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading)
		{
			weapon_data[? w_cur_data.reload_delay] += global.game_speed;
			if(weapon_data[? w_cur_data.reload_delay] >= get_reload_time())
			{
				weapon_data[? w_cur_data.bullet_count] = weapon_data[? w_set_data.bullet_count];
				weapon_data[? w_cur_data.shot_delay] = 0;
				
				if(weapon_data[? w_set_data.id] == other.cur_weapon)
				{
					weapon_data[? w_cur_data.state] = w_state.firing;
				}
				else
				{
					weapon_data[? w_cur_data.state] = w_state.idle;
				}
			}
		}
	}
}


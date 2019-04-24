// player 따라 다니기.
x = objPlayer.x;
y = objPlayer.y;

// gauge value / bullet count.

if(!instance_exists(WeaponManager)) return;

var targetValue = 1;
var bulletCount = 0;
with(WeaponManager)
{
	with(weapon_map_instance_id[? cur_weapon])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading)
		{
			targetValue = weapon_data[? w_cur_data.reload_delay] / get_reload_time();
		}
		else
		{
			targetValue = weapon_data[? w_cur_data.bullet_count] / weapon_data[? w_set_data.bullet_count];
		}
		
		bulletCount = weapon_data[? w_cur_data.bullet_count];
	}
}

_text_count_value = bulletCount;
_gauge_value = lerp(_gauge_value, targetValue, 0.5);


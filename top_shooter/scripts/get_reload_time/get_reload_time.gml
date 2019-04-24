
if(!instance_exists(objPlayer)) return;
if(!instance_exists(WeaponManager)) return;

var player_reload_time = 1;

with(objPlayer)
{
	player_reload_time = entity_data[? e_cur_data.weapon_reload_time];
}

with(WeaponManager)
{
	var target = weapon_map_instance_id[? cur_weapon];
	if(target != undefined)
	{
		with(target)
		{
			return weapon_data[? w_set_data.reload_delay] * player_reload_time;
		}
	}
}

return 1;
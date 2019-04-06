if(!instance_exists(WeaponManager)) return;

var reloading = false;
var value = 0;
with(WeaponManager)
{
	with(weapon_map_instance_id[? other.weapon_id])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading)
		{
			reloading = true;
			value = weapon_data[? w_cur_data.reload_delay] / weapon_data[? w_set_data.reload_delay];
		}
		else
		{
			reloading = false;
		}
	}
}

is_reloading = reloading;
reloading_value = value;
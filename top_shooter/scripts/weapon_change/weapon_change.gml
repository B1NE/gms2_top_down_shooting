/// @description weapon_change(weapon_id)
/// @function weapon_change
/// @param weapon_id

var weapon_id = argument0;

with(WeaponManager)
{
	if(cur_weapon == weapon_id) return false;
	
	var before_id = cur_weapon;
	with(weapon_map_instance_id[? weapon_id])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading) return false;
		other.cur_weapon = weapon_id;
		weapon_data[? w_cur_data.state] = w_state.firing;
	}
	
	if(before_id < 0) return true;
	with(weapon_map_instance_id[? before_id])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading) return true;
		weapon_data[? w_cur_data.reaction_value] = weapon_data[? w_set_data.reaction_min];
		weapon_data[? w_cur_data.reload_delay] = 0;
		weapon_data[? w_cur_data.state] = w_state.reloading;
	}
	
	return true;
}
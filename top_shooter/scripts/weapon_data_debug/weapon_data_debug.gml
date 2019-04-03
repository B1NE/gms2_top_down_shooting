/// @description weapon_data_debug(instance_id)
/// @function weapon_data_debug
/// @param instance_id
/*
enum w_set_data
{
	id,
	reload_delay,
	bullet_amount,
	bullet_count,
	shot_delay,
	reaction_min,
	reaction_max,
	reaction_add,
}

enum w_cur_data
{
	shot_delay,
	reload_delay,
	reaction_value,
	bullet_count,
	state,
}

enum w_state
{
	idle,
	reloading,
	firing,
}
*/


with(argument0)
{
	var _id = weapon_data[? w_set_data.id];
	var _reload_delay = weapon_data[? w_set_data.reload_delay];
	var _bullet_amount = weapon_data[? w_set_data.bullet_amount];
	var _bullet_count = weapon_data[? w_set_data.bullet_count];
	var _shot_delay = weapon_data[? w_set_data.shot_delay];
	var _reaction_min = weapon_data[? w_set_data.reaction_min];
	var _reaction_max = weapon_data[? w_set_data.reaction_max];
	var _reaction_add = weapon_data[? w_set_data.reaction_add];
	
	var _cur_shot_delay = weapon_data[? w_cur_data.shot_delay];
	var _cur_reload_delay = weapon_data[? w_cur_data.reload_delay];
	var _cur_bullet_count = weapon_data[? w_cur_data.bullet_count];
	var _cur_reaction_value = weapon_data[? w_cur_data.reaction_value];
	var _cur_state = weapon_data[? w_cur_data.state];
	
	show_debug_message("//////////////////////////////////////////////////////////");
	show_debug_message("// id            : " + string_format(_id, 4, 0) +			 " // reload_delay  : " + string_format(_reload_delay, 4, 0)); 
	show_debug_message("// bullet_amount : " + string_format(_bullet_amount, 4, 0) + " // bullet_count  : " + string_format(_bullet_count, 4, 0));
	show_debug_message("// shot_delay    : " + string_format(_shot_delay, 4, 0) + " // reaction_min  : " + string_format(_reaction_min, 4, 0));
	show_debug_message("// reaction_max  : " + string_format(_reaction_max, 4, 0) + " // reaction_add  : " + string_format(_reaction_add, 4, 0));
	show_debug_message("//////////////////////////////////////////////////////////");
	
	show_debug_message("//////////////////////////////////////////////////////////");
	show_debug_message("// shot_delay    : " + string_format(_cur_shot_delay, 4, 0) +   " // reload_delay    : " + string_format(_cur_reload_delay, 4, 0)); 
	show_debug_message("// bullet_count  : " + string_format(_cur_bullet_count, 4, 0) + " // reaction_value  : " + string_format(_cur_reaction_value, 4, 0));
	show_debug_message("// cur_state     : " + string(_cur_state));
	show_debug_message("//////////////////////////////////////////////////////////");
}
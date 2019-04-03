/// @description weapon_add(instance_id)
/// @function weapon_add
/// @param instance_id

if(!instance_exists(WeaponManager))
{
	instance_create_layer(0, 0, "Managers", WeaponManager);
}

with(argument0)
{
	with(WeaponManager)
	{
		var pos = ds_list_find_index(weapon_list, argument0);
		if(pos < 0)
		{
			ds_list_add(weapon_list, argument0);
			ds_map_add(weapon_map_instance_id, other.weapon_data[? w_set_data.id], argument0);
		}
	}
}
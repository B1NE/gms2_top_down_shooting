/// @description weapon_remove(instance_id)
/// @function weapon_remove
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
		if(pos >= 0)
		{
			ds_list_delete(weapon_list, pos);
			ds_map_delete(weapon_map_instance_id, other.weapon_data[? w_set_data.id]);
		}
	}
	
	instance_destroy(argument0);
}
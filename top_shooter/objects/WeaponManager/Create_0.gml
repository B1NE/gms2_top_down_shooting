// weapon data
enum w_set_data
{
	id = 0,
	reload_delay = 1,
	bullet_amount = 2,
	bullet_count = 3,
	shot_delay = 4,
	reaction_min = 5,
	reaction_max = 6,
	reaction_add = 7,
}

enum w_cur_data
{
	shot_delay = 100,
	reload_delay = 101,
	reaction_value = 102,
	bullet_count = 103,
	state = 104,
}

enum w_state
{
	idle = 1000,
	reloading = 1001,
	firing = 1002,
}

// bullet data
enum b_set_data
{
	speed,
	damage,
	force,
}

weapon_list = ds_list_create();
weapon_map_instance_id = ds_map_create();

/*
weapon_add(instance_create_layer(0, 0, "Weapons", objWeapon1));
weapon_add(instance_create_layer(0, 0, "Weapons", objWeapon2));
weapon_add(instance_create_layer(0, 0, "Weapons", objWeapon3));
*/

instance_deactivate_layer("Weapons");

weapon_slot_count = 1;
cur_weapon = -1;
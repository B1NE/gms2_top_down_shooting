event_inherited();

#region weapon_data setting.

weapon_data[? w_set_data.id] = 3;
weapon_data[? w_set_data.reload_delay] = 120;
weapon_data[? w_set_data.bullet_amount] = 1;
weapon_data[? w_set_data.bullet_count] = 300;
weapon_data[? w_set_data.shot_delay] = 1;
weapon_data[? w_set_data.reaction_min] = 0;
weapon_data[? w_set_data.reaction_max] = 2;
weapon_data[? w_set_data.reaction_add] = 0.1;

weapon_data[? w_cur_data.reaction_value] = ds_map_find_value(weapon_data, w_set_data.reaction_min);
weapon_data[? w_cur_data.bullet_count] = ds_map_find_value(weapon_data, w_set_data.bullet_count);

#endregion

bullet = objBullet3;
bulletEffect = noone;
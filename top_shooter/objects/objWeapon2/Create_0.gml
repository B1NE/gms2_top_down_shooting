event_inherited();

#region weapon_data setting.

weapon_data[? w_set_data.id] = 2;
weapon_data[? w_set_data.reload_delay] = 80;
weapon_data[? w_set_data.bullet_amount] = 15;
weapon_data[? w_set_data.bullet_count] = 2;
weapon_data[? w_set_data.shot_delay] = 30;
weapon_data[? w_set_data.reaction_min] = 5;
weapon_data[? w_set_data.reaction_max] = 12;
weapon_data[? w_set_data.reaction_add] = 1;

weapon_data[? w_cur_data.reaction_value] = ds_map_find_value(weapon_data, w_set_data.reaction_min);
weapon_data[? w_cur_data.bullet_count] = ds_map_find_value(weapon_data, w_set_data.bullet_count);

#endregion

bullet = objBullet2;
bulletEffect = objBulletDestroy2;

#region weapon_data

weapon_data = ds_map_create();
ds_map_add(weapon_data, w_set_data.id, 0);
ds_map_add(weapon_data, w_set_data.reload_delay, 60);
ds_map_add(weapon_data, w_set_data.bullet_amount, 1);
ds_map_add(weapon_data, w_set_data.bullet_count, 30);
ds_map_add(weapon_data, w_set_data.shot_delay, 5);
ds_map_add(weapon_data, w_set_data.reaction_min, 0);
ds_map_add(weapon_data, w_set_data.reaction_max, 5);
ds_map_add(weapon_data, w_set_data.reaction_add, 0);
ds_map_add(weapon_data, w_cur_data.shot_delay, 0);
ds_map_add(weapon_data, w_cur_data.reload_delay, 0);
ds_map_add(weapon_data, w_cur_data.reaction_value, 0);
ds_map_add(weapon_data, w_cur_data.bullet_count, 30);
ds_map_add(weapon_data, w_cur_data.state, w_state.idle);

#endregion

#region object_target

weapon_position_x = 10;
weapon_position_y = 10;
bullet = objBullet1;
bulletEffect = objBulletDestroy1;

#endregion
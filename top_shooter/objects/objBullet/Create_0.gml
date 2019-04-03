#region bullet_data

bullet_data = ds_map_create();
ds_map_add(bullet_data, b_set_data.speed, 10);
ds_map_add(bullet_data, b_set_data.damage, 2);
ds_map_add(bullet_data, b_set_data.force, 2);

#endregion

#region draw_var

start_pos_x = x;
start_pos_y = y;
shadow_line_length = 500;

#endregion

#region bullet_set

destroyEffect = objBulletDestroy1;
speed = bullet_data[? b_set_data.speed] * global.game_speed;

#endregion
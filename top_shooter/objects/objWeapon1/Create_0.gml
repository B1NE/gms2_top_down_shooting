event_inherited();

#region weapon_data setting.

weapon_data[? w_set_data.id] = 1;
weapon_data[? w_set_data.reload_delay] = 30;
weapon_data[? w_set_data.bullet_amount] = 1;
weapon_data[? w_set_data.bullet_count] = 15;
weapon_data[? w_set_data.shot_delay] = 40;
weapon_data[? w_set_data.reaction_min] = 0;
weapon_data[? w_set_data.reaction_max] = 5;
weapon_data[? w_set_data.reaction_add] = 0.2;

weapon_data[? w_cur_data.reaction_value] = weapon_data[? w_set_data.reaction_min];
weapon_data[? w_cur_data.bullet_count] = weapon_data[? w_set_data.bullet_count];

weapon_data_debug(self);

#endregion

#region bullet setting.

bullet = objBullet1;
bulletEffect = objBulletDestroy1;

#endregion
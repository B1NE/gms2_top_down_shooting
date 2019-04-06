event_inherited();

#region bullet_data setting.

bullet_data[? b_set_data.speed] = 6;
bullet_data[? b_set_data.damage] = 1;
bullet_data[? b_set_data.force] = 2;

alpha_value = 0.4;
scale_value = 0.2;
rotation_value = random_range(0, 360);
isCollided = false;

#endregion

speed = bullet_data[? b_set_data.speed] * global.game_speed;
destroyEffect = noone;
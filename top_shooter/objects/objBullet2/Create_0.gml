event_inherited();

#region bullet_data setting.

bullet_data[? b_set_data.speed] = random_range(15, 20);
bullet_data[? b_set_data.force] = 20;
bullet_data[? b_set_data.damage] = 3;

#endregion

speed = bullet_data[? b_set_data.speed] * global.game_speed;
alarm_add(self, 0, 20);
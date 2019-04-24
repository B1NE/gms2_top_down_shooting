
bullet_data[? b_set_data.speed] -= 0.08;

speed = max(0, bullet_data[? b_set_data.speed] * global.game_speed);

scale_value = min(scale_value + 0.03 * global.game_speed, 1);
rotation_value += 2 * global.game_speed;
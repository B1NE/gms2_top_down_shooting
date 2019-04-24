event_inherited();

entity_data[? e_set_data.hp] = 5;
entity_data[? e_set_data.move_speed] = random_range(1, 2);
entity_data[? e_set_data.attack_delay] = 60;
entity_data[? e_set_data.force] = 0;
entity_data[? e_set_data.damage] = 1;
entity_data[? e_set_data.shield] = 0;
entity_data[? e_set_data.rotation_speed] = random_range(0.3, 1);

var level = int64((EnemySpawner.cur_game_level / 5));
entity_data[? e_add_data.hp] = level * 5;
entity_data[? e_add_data.move_speed] = level * 0.2;

entity_data[? e_cur_data.hp] = entity_data[? e_set_data.hp] + entity_data[? e_add_data.hp];
entity_data[? e_cur_data.move_speed] = entity_data[? e_set_data.move_speed] + entity_data[? e_add_data.move_speed];
entity_data[? e_cur_data.weapon_reload_time] = entity_data[? e_set_data.weapon_reload_time];
entity_data[? e_cur_data.attack_delay] = entity_data[? e_set_data.attack_delay];
entity_data[? e_cur_data.damage] = entity_data[? e_set_data.damage];
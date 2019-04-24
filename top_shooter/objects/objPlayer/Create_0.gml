event_inherited();

image_speed = 0;

entity_data[? e_set_data.hp] = 5;
entity_data[? e_set_data.attack_delay] = 1;
entity_data[? e_set_data.move_speed] = 3;
entity_data[? e_set_data.force] = 0;
entity_data[? e_set_data.damage] = 0;
entity_data[? e_set_data.shield] = 0;

entity_data[? e_cur_data.hp] = entity_data[? e_set_data.hp];
entity_data[? e_cur_data.attack_delay] = entity_data[? e_set_data.attack_delay];
entity_data[? e_cur_data.weapon_reload_time] = entity_data[? e_set_data.weapon_reload_time];
entity_data[? e_cur_data.move_speed] = entity_data[? e_set_data.move_speed];

spr_angle = 0;

weapon_change(1);
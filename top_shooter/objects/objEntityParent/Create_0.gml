
/*
	e_set_data / game start 전에 세팅되는 값들.
	hp - 체력.
	attack_delay - weapon에 곱해지는 value default = 1. -> 낮아 질수록 빨라진다. / enemy의 경우 player에게 데미지를 입히는 delay.
	move_speed - 움직이는 속도.
	damage - weapon에 더해지는 value default = 0. -> 높아질수록 세진다.
	shield - hp를 보호하는 방어막 value defulat = 0. -> 처음 시작할 때 (아이템 아니고는 0)
	force - weapon에 의해 밀리는 값 (enemy 일경우 사용)
	rotation_speed - enemy의 로테이션 되는 value.
*/
enum e_set_data
{
	hp = 0,	
	move_speed = 1,
	damage = 2,
	shield = 3,
	force = 4,
	rotation_speed = 5,
	weapon_reload_time = 6,
	attack_delay = 7,
}

/*
	e_cur_data / game 도중 변하는 값들.
*/
enum e_cur_data
{
	hp = 100,
	move_speed = 101,
	damage = 102,
	shield = 103,
	force = 104,
	weapon_reload_time = 106,
	attack_delay = 107,
}

/*
	e_add_data / item / skill에 의해 추가 되거나 감소하는 값들.
*/
enum e_add_data
{
	hp = 1000,
	move_speed = 1001,
	damage = 1002,
	shield = 1003,
	force = 1004,
	weapon_reload_time = 1006,
	attack_delay = 1007,
}

entity_data = ds_map_create();

ds_map_add(entity_data, e_set_data.hp, 0);
ds_map_add(entity_data, e_set_data.move_speed, 0);
ds_map_add(entity_data, e_set_data.damage, 0);
ds_map_add(entity_data, e_set_data.shield, 0);
ds_map_add(entity_data, e_set_data.force, 0);
ds_map_add(entity_data, e_set_data.rotation_speed, 0);
ds_map_add(entity_data, e_set_data.weapon_reload_time, 1);
ds_map_add(entity_data, e_set_data.attack_delay, 1);

ds_map_add(entity_data, e_cur_data.hp, 0);
ds_map_add(entity_data, e_cur_data.move_speed, 0);
ds_map_add(entity_data, e_cur_data.damage, 0);
ds_map_add(entity_data, e_cur_data.shield, 0);
ds_map_add(entity_data, e_cur_data.force, 0);
ds_map_add(entity_data, e_cur_data.weapon_reload_time, 1);
ds_map_add(entity_data, e_cur_data.attack_delay, 1);

ds_map_add(entity_data, e_add_data.hp, 0);
ds_map_add(entity_data, e_add_data.move_speed, 0);
ds_map_add(entity_data, e_add_data.damage, 0);
ds_map_add(entity_data, e_add_data.shield, 0);
ds_map_add(entity_data, e_add_data.force, 0);
ds_map_add(entity_data, e_add_data.weapon_reload_time, 0);
ds_map_add(entity_data, e_add_data.attack_delay, 0);

// entity들이 회전하는 값. direction 사용 안함.
spr_angle = 0;
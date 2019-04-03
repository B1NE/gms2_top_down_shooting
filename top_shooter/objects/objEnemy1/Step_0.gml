event_inherited();

if (instance_exists(objPlayer)) {
	var target_angle = point_direction(x, y, objPlayer.x, objPlayer.y);
	var rotation_speed = entity_data[? e_set_data.rotation_speed];
	
	spr_angle += (clamp(angle_difference(target_angle, spr_angle), -rotation_speed, rotation_speed)) * global.game_speed;
}

var move_speed = entity_data[? e_cur_data.move_speed];
var horizontal = lengthdir_x(move_speed, spr_angle);
var vertical = lengthdir_y(move_speed, spr_angle);

image_speed = global.game_speed;
entity_data[? e_cur_data.attack_delay] -= global.game_speed;

if(instance_exists(objPlayer))
{
	if(instance_place(x +horizontal, y + vertical, objPlayer))
	{
		if(entity_data[? e_cur_data.attack_delay] < 0)
		{
			with(objPlayer)
			{
				entity_data[? e_cur_data.hp] -= other.entity_data[? e_cur_data.damage];
			}
			
			entity_data[? e_cur_data.attack_delay] = entity_data[? e_set_data.attack_delay];
		}
	}
	else
	{
		move_entity(horizontal + force_x, vertical + force_y);
	}
}
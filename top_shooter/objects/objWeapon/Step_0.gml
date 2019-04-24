
if(weapon_data[? w_cur_data.state] != w_state.firing) return;

weapon_data[? w_cur_data.shot_delay] -= global.game_speed;

if (weapon_data[? w_cur_data.shot_delay] <= 0) 
{	
	var reaction_value = weapon_data[? w_cur_data.reaction_value];
	var reaction_add = weapon_data[? w_set_data.reaction_add];
	var reaction_max = weapon_data[? w_set_data.reaction_max];
	
	repeat(weapon_data[? w_set_data.bullet_amount])
	{
		var add_direction = random_range(-reaction_value, reaction_value);
		reaction_value = min(reaction_value + reaction_add, reaction_max);

		var add_weapon_position_x = lengthdir_x(weapon_position_x, objPlayer.spr_angle);
		var add_weapon_position_y = lengthdir_y(weapon_position_y, objPlayer.spr_angle);

		with (instance_create_layer(objPlayer.x + add_weapon_position_x, objPlayer.y + add_weapon_position_y, objPlayer.layer, bullet)) 
		{
			bulletEffect = other.bulletEffect;
			direction = objPlayer.spr_angle + add_direction;
			image_angle = direction;
		}
	}
	
	weapon_data[? w_cur_data.reaction_value] = reaction_value;
	//weapon_data[? w_cur_data.shot_delay] = weapon_data[? w_set_data.shot_delay];
	weapon_set_shot_delay();
	
	if(--weapon_data[? w_cur_data.bullet_count] <= 0)
	{
		weapon_data[? w_cur_data.reaction_value] = weapon_data[? w_set_data.reaction_min];
		weapon_data[? w_cur_data.reload_delay] = 0;
		weapon_data[? w_cur_data.state] = w_state.reloading;
	}
}
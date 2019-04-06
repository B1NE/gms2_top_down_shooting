if (entity_data[? e_cur_data.hp] <= 0)
{	
	repeat(irandom_range(4, 6))
	{
		global.spr_target_array[global.cur_spr_count] = sprBlood;
		global.spr_position_x_array[global.cur_spr_count] = x + random_range(-15, 15);
		global.spr_position_y_array[global.cur_spr_count] = y + random_range(-15, 15);
		global.cur_spr_count++;

		if(global.cur_spr_count > global.max_spr_count)
		{
			global.cur_spr_count = 0;
		}
	}

	add_exp(1);
	instance_destroy();
}

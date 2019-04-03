
if(!surface_exists(surface_id))
{
	surface_id = surface_create(2000,2000);
}

surface_set_target(surface_id);

// draw.
for(var i = 0;i < global.cur_spr_count;++i)
{
	draw_sprite(global.spr_target_array[i], noone, global.spr_position_x_array[i], global.spr_position_y_array[i]);
}

surface_reset_target();

draw_surface(surface_id, 0, 0);

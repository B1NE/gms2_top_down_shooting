surface_id = -1;

global.max_spr_count = 30000;
global.cur_spr_count = 0;

global.spr_target_array = array_create(global.max_spr_count, noone);
global.spr_position_x_array = array_create(global.max_spr_count, 0);
global.spr_position_y_array = array_create(global.max_spr_count, 0);
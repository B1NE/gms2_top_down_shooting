game_time += delta_time * 0.000001 * global.game_speed;
var time = string(game_time);

draw_text_ext_transformed_colour(draw_pos_x + 2, draw_pos_y, time, 20, 200, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_ext_transformed_colour(draw_pos_x - 2, draw_pos_y, time, 20, 200, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_ext_transformed_colour(draw_pos_x, draw_pos_y + 2, time, 20, 200, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_ext_transformed_colour(draw_pos_x, draw_pos_y - 2, time, 20, 200, 2, 2, 0, c_black, c_black, c_black, c_black, 1);

draw_text_ext_transformed_colour(draw_pos_x, draw_pos_y, time, 20, 200, 2, 2, 0, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(sprWhitePixel, -1, x, y, image_xscale, image_yscale, 0, c_black, 1);
draw_sprite_ext(sprWhitePixel, -1, x, y, 200 / 16, 200 / 16, 0, cur_color, 1);

var color = draw_get_color();

draw_set_color(c_black);
draw_text_ext_transformed(x, y - 50, string(objTimer.game_time), 10, 200, 2, 2, 0);

draw_set_color(color);
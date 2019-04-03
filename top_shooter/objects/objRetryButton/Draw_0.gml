draw_sprite_ext(sprWhitePixel, -1, x, y, image_xscale, image_yscale, 0, cur_color, 0.8);

var color = draw_get_color();
draw_set_color(c_black);

draw_text(x, y, "RETRY");

draw_set_color(color);
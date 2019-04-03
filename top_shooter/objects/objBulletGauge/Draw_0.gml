draw_sprite_pie(sprCircle, -1, x, y, 90, 90 + 270 * _gauge_value, c_yellow, 0.8, 0.5);

var beforeColor = draw_get_color();

draw_set_color(c_silver);

draw_text(x + 5, y - 20, string(_text_count_value));

draw_set_color(beforeColor);
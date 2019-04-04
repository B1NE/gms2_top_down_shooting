draw_sprite_pie(sprCircle, -1, x, y, 90, 90 + 270 * _gauge_value, c_yellow, 0.8, 0.5);

var beforeColor = draw_get_color();
var beforeFont = draw_get_font();

draw_set_color(c_silver);
draw_set_font(fntNumber);

draw_set_valign(fa_bottom);
draw_set_halign(fa_left);

draw_text(x + 5, y - 5, string(_text_count_value));

draw_set_color(beforeColor);
draw_set_font(beforeFont);
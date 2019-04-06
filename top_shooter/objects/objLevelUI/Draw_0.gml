// back
draw_sprite_ext(sprSlider, 0, x, y, __width / 48, 30 / 8, 0, c_white, 1);
draw_sprite_part_ext(sprSlider, 1, 0, 0, __width, 30, x, y, __width / 48 * PlayerLevelManager.cur_gauge_value, 30 /8 , c_green, 1);

var before = draw_get_font();
draw_set_font(fntNumber);

draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_transformed(x - 10, y + 30 * 0.5, "Lv." + string(PlayerLevelManager.cur_level), 1, 1, 0);

/*
if(PlayerLevelManager.cur_level > PlayerLevelManager.cur_levelup_count)
{
	instance_activate_object(levelupButton);
}
else
{
	instance_deactivate_object(levelupButton);
}
*/

draw_set_font(before);


// back
draw_sprite(sprLevelBg, 0, 0, 0);
draw_sprite(sprLevelGaugeBg, 0, 120, 15);
draw_sprite_part_ext(sprLevelGauge, 0, 3, 0, 199 * PlayerLevelManager.cur_gauge_value, 21, 123, 15, 1, 1, c_white, 1);

var before = draw_get_font();
draw_set_font(fntNumber);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_transformed(20, 28, "Lv." + string(PlayerLevelManager.cur_level), 0.7, 0.7, 0);



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


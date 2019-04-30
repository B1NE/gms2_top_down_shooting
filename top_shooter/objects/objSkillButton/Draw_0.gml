if (zui_get_hover())
{
	if (__pressed)
		draw_color = $cccccc;
	else
		draw_color = $eeeeee;
} 
else 
{
	draw_color = $ffffff;
}

if(state == skill_state.lock)
{
	draw_color = $ffffff;
	caption = "lock";
}
else if(state == skill_state.max_level)
{
	caption = "max";
}
else if(state == skill_state.level_up)
{
	caption = string(get_skill_level(skill_id));
}
else if(state == skill_state.unlock)
{
	caption = "unlock";
}

draw_set_color(draw_color);
draw_sprite_ext(sprHexagon, 0, __width * 0.5, __height * 0.5, 1, 1, 0, draw_get_color(), 1);

draw_set_font(fntMain);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(merge_color(draw_get_color(), 0, 0.5));
draw_text(__width * 0.5, __height * 0.5, string_hash_to_newline(caption));


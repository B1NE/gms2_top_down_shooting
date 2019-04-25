if(!instance_exists(SkillManager)) return;

if (zui_get_hover()) {
 if (pressed)
	draw_color = $cccccc;
 else
	draw_color = $eeeeee;
} else {
	draw_color = $ffffff;
}

var skillPoint = SkillManager.skill_point;

draw_set_font(fntNumber);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite_ext(sprLevelUpButton, 0, __width - 73.5, 45, 1, 1, 0, draw_color, 1.0);

if(skillPoint > 0)
{
	draw_sprite(sprLevelUpPoint, 0, __width - 20, 22);
	draw_text_transformed(__width - 21, 21, string(skillPoint), 0.5, 0.5, 0);
}
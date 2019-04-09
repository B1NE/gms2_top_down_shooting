if (zui_get_hover()) {
 if (pressed)
  draw_set_color($cccccc);
 else
  draw_set_color($eeeeee); 
} else {
 draw_set_color($ffffff);
}

//ui_draw_sprite_panel(sprHexagon, 0, 0, 0, 0, __width, __height);
draw_sprite_ext(sprHexagon, 0, __width * 0.5, __height * 0.5, 1, 1, 0, draw_get_color(), 1);

draw_set_font(fntMain);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(merge_color(draw_get_color(), 0, 0.5));
draw_text(__width * 0.5, __height * 0.5, string_hash_to_newline(caption));


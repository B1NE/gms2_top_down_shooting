if (zui_get_hover()) {
 if (pressed)
  draw_set_color($cccccc);
 else
  draw_set_color($eeeeee); 
} else {
 draw_set_color($ffffff);
}

ui_draw_sprite_panel(sprButton, 0, 8, -6, -6, __width + 12, __height + 12);
draw_set_color(merge_color(draw_get_color(), 0, 0.5));


//draw_text(__width * 0.5, __height * 0.5, string_hash_to_newline(caption));



/*
draw_sprite_ext(sprButton, -1, x, y, 1, 1, 0, c_gray, 1);

if(!instance_exists(WeaponManager)) return;

var is_reloading = false;
var reloading_value = 0;


with(WeaponManager)
{
	with(weapon_map_instance_id[? other.weapon_id])
	{
		if(weapon_data[? w_cur_data.state] == w_state.reloading)
		{
			is_reloading = true;
			reloading_value = weapon_data[? w_cur_data.reload_delay] / weapon_data[? w_set_data.reload_delay];
		}
		else
		{
			is_reloading = false;
		}
	}
}


if(is_reloading)
{
	draw_sprite_pie(sprButton, -1, x, y, 90, 90 + reloading_value * 360 , c_white, 1, 0.93);
}
else
{
	draw_sprite_ext(sprButton, -1, x, y, 1, 1, 0, c_white, 1);
}

if(weapon_sprite_name != "")
{
	draw_sprite_ext(asset_get_index(weapon_sprite_name), -1, x, y, 0.5, 0.5, 0, c_white, 1);
}
*/
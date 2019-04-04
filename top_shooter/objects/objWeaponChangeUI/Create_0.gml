// weapon change button create.
zui_set_size(340, 100);
zui_set_anchor(0, 0.5);

with(zui_create(10, zui_get_height() * 0.5, objWeaponButton))
{
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}

with(zui_create(120, zui_get_height() * 0.5, objWeaponButton))
{
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}

with(zui_create(230, zui_get_height() * 0.5, objWeaponButton))
{
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}

/*
with (zui_create(zui_get_width() - __width & 0.5, zui_get_height() - __height * 0.5 , objTimerLabel)) 
{
	other.position_label = id;
}

// create position set.
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

var spancing = 20;
var buttonSize = 100;
var buttonCount = 3;

button_position_x_array = array_create(buttonCount, 0);
button_position_y = view_height - spancing - buttonSize * 0.5;

button_obj_array = array_create(buttonCount, 0);

for(var i = 0;i < buttonCount;i++)
{
	button_position_x_array[i] = (view_width - (spancing * (buttonCount - i)) - (buttonSize * (buttonCount - i - 1))) - buttonSize * 0.5;
	
	with(instance_create_layer(view_x + button_position_x_array[i], view_y + button_position_y, "UI", objWeaponButton))
	{	
		other.button_obj_array[i] = self;
		
		weapon_id = i + 1;
		weapon_sprite_name = "sprWeapon" + string(i + 1);
		ui_touch_width = buttonSize;
		ui_touch_height = buttonSize;
	}
}
*/
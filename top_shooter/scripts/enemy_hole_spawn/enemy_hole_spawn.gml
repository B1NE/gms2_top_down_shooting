/// @description enemy_hole_spawn(level)
/// @function enemy_hole_spawn
/// @param level

var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);
var camera_x = camera_get_view_x(view_camera[0]) + camera_width * 0.5;
var camera_y = camera_get_view_y(view_camera[0]) + camera_height * 0.5;

var safe_range = 100;
var create_width = (camera_width - safe_range) / 2;
var create_height = (camera_height - safe_range) / 2;

while (true) {
	var create_x = camera_x + choose(1, -1) * (safe_range * 0.5 + random(create_width));
	var create_y = camera_y + choose(1, -1) * (safe_range * 0.5 + random(create_height));
	
	/*
	if (instance_place(create_x, create_y, objWall) != noone)
		continue;
	*/
	
	if(create_x < 50 || create_x > room_width - 50 || create_y < 50 || create_y > room_height - 50) continue;
	
	with (instance_create_layer(create_x, create_y, "Floor", objHole))
	{
		var min_value = argument0;
		var max_value = argument0 + int64(argument0 * 0.5) + 1;
		create_count = irandom_range(min_value, max_value);
	}
		
	break;
}
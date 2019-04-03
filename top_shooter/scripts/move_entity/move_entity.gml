/// @description move_entity(move_x,move_y)
/// @function move_entity
/// @param move_x
/// @param move_y
var move_x = argument0 * global.game_speed;
var move_y = argument1 * global.game_speed;

if(x + move_x >= global.room_boarder && x + move_x < room_width - global.room_boarder)
{
	if (instance_place(x + move_x, y, objWall) != noone)
	{
		move_contact_instance(objWall, sign(move_x), 0, ceil(move_x));
	}
	else
	{
		x += move_x;
	}
}


if(y + move_y >= global.room_boarder && y + move_y < room_height - global.room_boarder)
{
	if (instance_place(x, y + move_y, objWall) != noone)
	{
		move_contact_instance(objWall, 0, sign(move_y), ceil(move_y));
	}
	else
	{
		y += move_y;
	}	
}

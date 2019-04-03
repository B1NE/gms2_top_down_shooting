event_inherited();

force_x *= 0.8;
force_y *= 0.8;

with (instance_place(x, y, objEnemyParent)) {
	var move_x = sign(other.x - x) * global.game_speed;
	
	if(other.x + move_x >= global.room_boarder && other.x + move_x < room_width - global.room_boarder)
	{
		if (instance_place(other.x + move_x, other.y, objWall) == noone)
			other.x += move_x;
	}
		
	var move_y = sign(other.y - y) * global.game_speed;
	
	if(other.y + move_y >= global.room_boarder && other.y + move_y < room_height - global.room_boarder)
	{
		if (instance_place(other.x, other.y + move_y, objWall) == noone)
			other.y += move_y;
	}
}
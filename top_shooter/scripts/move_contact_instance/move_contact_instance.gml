var instance = argument0;
var horizontal = argument1;
var vertical = argument2;
var step = argument3;

for (var i = 0; i < step; ++i) {
	if (instance_place(x + horizontal, y + vertical, instance) != noone)
		break;
		
	x += horizontal;
	y += vertical;
}
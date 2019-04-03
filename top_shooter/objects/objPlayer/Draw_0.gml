event_inherited();

var x1 = x + lengthdir_x(40, spr_angle - 15);
var x2 = x + lengthdir_x(40, spr_angle + 15);
var x3 = x + lengthdir_x(50, spr_angle);

var y1 = y + lengthdir_y(40, spr_angle - 15);
var y2 = y + lengthdir_y(40, spr_angle + 15);
var y3 = y + lengthdir_y(50, spr_angle);

draw_triangle(x1, y1, x2, y2, x3, y3, false);

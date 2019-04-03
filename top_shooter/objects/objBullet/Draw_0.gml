#region trail_effect_calc
var draw_width = 2;
var draw_length = point_distance(start_pos_x, start_pos_y, x, y);
draw_length = min(draw_length, shadow_line_length);

px1 = x + lengthdir_x(draw_width, direction + 90);
py1 = y + lengthdir_y(draw_width, direction + 90);
px2 = x + lengthdir_x(draw_width, direction - 90);
py2 = y + lengthdir_y(draw_width, direction - 90);
px3 = px1 + lengthdir_x(draw_length, direction + 180);
py3 = py1 + lengthdir_y(draw_length, direction + 180);
px4 = px2 + lengthdir_x(draw_length, direction + 180);
py4 = py2 + lengthdir_y(draw_length, direction + 180);

#endregion

draw_primitive_begin(pr_trianglestrip);

draw_vertex_color(px1, py1, c_white, 0.5);
draw_vertex_color(px2, py2, c_white, 0.5);
draw_vertex_color(px3, py3, c_white, 0.0);
draw_vertex_color(px4, py4, c_white, 0.0);

draw_primitive_end();

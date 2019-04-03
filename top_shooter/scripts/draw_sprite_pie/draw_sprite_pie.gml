/// draw_sprite_pie(sprite,subimg,x,y,startangle,endangle,color,alpha,scale)
/// @description draw_sprite_pie(sprite,subimg,x,y,startangle,endangle,color,alpha,scale)
/// @function draw_sprite_pie
/// @param sprite
/// @param subimg
/// @param x
/// @param y
/// @param startangle
/// @param endangle
/// @param color
/// @param alpha
/// @param xscale
var width = sprite_get_width(argument0);
var height = sprite_get_height(argument0);
var texel_x = 0.5 / width;
var texel_y = 0.5 / height;

width *= argument8;
height *= argument8;

draw_primitive_begin_texture(pr_trianglefan, sprite_get_texture(argument0, argument1));
draw_vertex_texture_color(argument2, argument3, 0.5, 0.5, argument6, argument7);

while (1) {
    var angle = degtorad(argument4);
    var dx = min(abs(tan(angle + pi / 2)), 1) * sign(cos(angle));
    var dy = min(abs(tan(angle)), 1) * sign(-sin(angle));

    draw_vertex_texture_color(argument2 + width * 0.5 * dx, argument3 + height * 0.5 * dy, dx / 2 + 0.5 + texel_x, dy / 2 + 0.5 + texel_y, argument6, argument7);

    if (argument4 = argument5)
        break;

    var next = floor(argument4 / 45 + 1) * 45;

    if (next >= argument5)
        argument4 = argument5;
    else
        argument4 = next;
}

draw_primitive_end();

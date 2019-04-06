before_game_speed = global.game_speed;
global.game_speed = 0;

zui_set_anchor(0.5, 0.5);
zui_set_size(__parent.__width, __parent.__height);

if(!instance_exists(SkillManager))
{
	instance_create_layer(0, 0, "Managers", SkillManager);
}

var skill_list = SkillManager.skill_list;

// center.
var count = 0;
with(zui_create(zui_get_x(), zui_get_y(), objSkillButton))
{
	var data = skill_list[| count];
	caption = data[? skill_data.id];
	count++;
}

// depth 1.
var start_angle = 0;
var length = 100;
var depth_count = 1;
for(var i = 0;i < 6;++i)
{
	var d_x = zui_get_x() + lengthdir_x(length, start_angle + 60 * (i + 1));
	var d_y = zui_get_y() + lengthdir_y(length, start_angle + 60 * (i + 1));
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		caption = data[? skill_data.id];
	}
	count++;
}

// depth 2.
start_angle = 30;
length = 170;
depth_count = 2;
for(var i = 0;i < 6;++i)
{
	var d_x = zui_get_x() + lengthdir_x(length, start_angle + 60 * (i + 1));
	var d_y = zui_get_y() + lengthdir_y(length, start_angle + 60 * (i + 1));
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		caption = data[? skill_data.id];
	}
	count++;
}

with(zui_create(zui_get_width() - 60, 60, objSkillCloseButton))
{
	caption = "x";
}
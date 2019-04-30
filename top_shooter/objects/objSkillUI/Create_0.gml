before_game_speed = global.game_speed;
global.game_speed = 0;

offsetx = 0;
offsety = 0;

touch_origin_x = 0;
touch_origin_y = 0;
is_dragging = false;
//threshold = 5;

add_width = 500;
add_height = 250;

origin_x = zui_get_x();
origin_y = zui_get_y();

zui_set_size(__parent.__width + add_width, __parent.__height + add_height);
zui_set_anchor(0.5, 0.5);

if(!instance_exists(SkillManager))
{
	instance_create_layer(0, 0, "Managers", SkillManager);
}

skill_buttons = ds_list_create();

var skill_list = SkillManager.skill_list;

// center.
var count = 0;
var start_x = __width * 0.5;
var start_y = __height * 0.5;
with(zui_create(start_x, start_y, objSkillButton))
{
	var data = skill_list[| count];
	skill_id = data[? skill_data.id];
	caption = skill_id;
	ds_list_add(other.skill_buttons, id);
	count++;
}


// depth 1.
var start_angle = 0;
var length = 75;
for(var i = 0;i < 6;++i)
{
	var d_x = start_x + lengthdir_x(length, start_angle + 60 * i);
	var d_y = start_y + lengthdir_y(length, start_angle + 60 * i);
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		skill_id = data[? skill_data.id];
		caption = skill_id;
		ds_list_add(other.skill_buttons, id);
	}
	count++;
}

// depth 2.
start_angle = 30;
length = 130;
for(var i = 0;i < 6;++i)
{
	var d_x = start_x + lengthdir_x(length, start_angle + 60 * i);
	var d_y = start_y + lengthdir_y(length, start_angle + 60 * i);
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		skill_id = data[? skill_data.id];
		caption = skill_id;
		ds_list_add(other.skill_buttons, id);
	}
	count++;
}

//depth 3.
start_angle = 0;
length = 75 * 3;
for(var i = 0;i < 6;++i)
{
	var d_x = start_x + lengthdir_x(length, start_angle + 60 * i);
	var d_y = start_y + lengthdir_y(length, start_angle + 60 * i);
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		skill_id = data[? skill_data.id];
		caption = skill_id;
		ds_list_add(other.skill_buttons, id);
	}
	count++;
	
	var tmpAngle = 120 + (i * 60);
	for(var j = 0; j < 2;++j)
	{
		var add_x = d_x + lengthdir_x(75 * (j + 1), tmpAngle);
		var add_y = d_y + lengthdir_y(75 * (j + 1), tmpAngle);
		
		with(zui_create(add_x, add_y, objSkillButton))
		{
			var data = skill_list[| count];
			skill_id = data[? skill_data.id];
			caption = skill_id;
			ds_list_add(other.skill_buttons, id);
		}
		count++;
	}
}

// depth 4.
start_angle = 30;
length = 130 * 2;
for(var i = 0;i < 6;++i)
{
	var d_x = start_x + lengthdir_x(length, start_angle + 60 * i);
	var d_y = start_y + lengthdir_y(length, start_angle + 60 * i);
	
	with(zui_create(d_x, d_y, objSkillButton))
	{
		var data = skill_list[| count];
		skill_id = data[? skill_data.id];
		caption = skill_id;
		ds_list_add(other.skill_buttons, id);
	}
	count++;
}

with(zui_create(__width - add_width * 0.5 - 60, add_height * 0.5 + 60, objSkillCloseButton))
{
	origin_x = zui_get_x();
	origin_y = zui_get_y();
	//other.close_button = id;
	caption = "x";
}

update_skill_state();
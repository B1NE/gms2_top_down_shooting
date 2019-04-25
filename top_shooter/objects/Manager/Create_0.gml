// landscape 때 gui 값이 회전을 안해서.. 따로 계산해서 set 해줌.
aspect = display_get_width() / display_get_height();
height = camera_get_view_height(view_camera[0]);
width = camera_get_view_width(view_camera[0]);

if(aspect > 1)
{
	display_set_gui_size(height * aspect, height);
}
else
{
	display_set_gui_size(width, width / aspect);
}

// manager create.
with(instance_create_layer(0, 0, "Managers", InputManager))
{
	
}

with(instance_create_layer(0, 0, "Managers", DebugManager))
{
	
}

with(instance_create_layer(0, 0, "Managers", SkillManager))
{
	
}


// ui create.
with(instance_create_layer(0, 0, "UI", objUI))
{
	
}

with(instance_create_layer(0, 0, "UI", objJoystick))
{
	
}

//spawner
with(instance_create_layer(0, 0, "Enemy", EnemySpawner))
{
	
}
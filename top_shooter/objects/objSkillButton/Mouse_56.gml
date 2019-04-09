if (pressed)
{
	pressed = 0;
	var parent_dragging = false;
	with(zui_get_parent())
	{
		pressed = 0;
		parent_dragging = is_dragging;
	}
	
	if (zui_get_hover() && !parent_dragging) 
	{
		event_user(0);
	}
 
}


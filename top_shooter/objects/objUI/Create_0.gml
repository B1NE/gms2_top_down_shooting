
/*

// weapon change button create.
with(instance_create_layer(0, 0, "UI", objWeaponChangeUI))
{
	
}

// top timer
with(instance_create_layer(0, 0, "UI", objTimer))
{
	
}

*/

with (zui_main()) 
{
	with(zui_create(zui_get_width() * 0.5, 50, objTimer))
	{
		
	}
	
	with(zui_create(0, 0, objLevelUI))
	{
		
	}
	
	with(zui_create(zui_get_width() - 340 - 10, zui_get_height() - 50 - 10, objWeaponChangeUI))
	{
		
	}
}

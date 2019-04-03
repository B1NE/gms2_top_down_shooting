if(entity_data[? e_cur_data.hp] <= 0)
{
	if(!instance_exists(objResultUI))
	{
		instance_create_layer(x, y, "UI", objResultUI);
	}
}
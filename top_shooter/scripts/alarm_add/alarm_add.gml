/// @description alarm_add(instance_id,alarm_index,frame)
/// @function alarm_add
/// @param instance_id
/// @param alarm_index
/// @param frame

if(!instance_exists(AlarmManager))
{
	instance_create_layer(x, y, "UI", AlarmManager);
}

with(AlarmManager)
{
	ds_list_add(alarm_list, [argument0, argument1, argument2]);
}
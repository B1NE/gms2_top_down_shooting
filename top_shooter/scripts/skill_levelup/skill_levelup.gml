/// @description skill_levelup(id)
/// @function skill_levelup
/// @param id

if(!instance_exists(SkillManager))
{
	instance_create_layer(0, 0, "Managers", SkillManager);
}

with(SkillManager)
{
	var data = ds_list_find_value(skill_list, argument0 - 1);
	if(data != undefined)
	{
		data[? skill_data.level]++;
		update_skill_state();
	}
}
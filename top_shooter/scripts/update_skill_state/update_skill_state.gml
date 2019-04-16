/// @description update_skill_state()
/// @function update_skill_state

if(instance_exists(objSkillUI))
{
	with(objSkillUI)
	{
		var count = ds_list_size(skill_buttons);
		for(var i = 0;i < count;++i)
		{
			with(skill_buttons[| i])
			{
				event_user(1);
			}
		}
	}
}


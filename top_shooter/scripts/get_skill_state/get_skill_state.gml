/// @description get_skill_state(id)
/// @function get_skill_state
/// @param id

if(!instance_exists(SkillManager))
{
	instance_create_layer(0, 0, "Managers", SkillManager);
}

with(SkillManager)
{
	var data = ds_list_find_value(skill_list, argument0 - 1);
	var skill_level = data[? skill_data.level];
	
	// 이미 스킬 레벨업은 한번이라도 한 스킬.
	if(skill_level > 0)
	{
		var type = data[? skill_data.type];
		if(type == skill_type.once) return skill_state.max_level;
		if(type == skill_type.infinite) return skill_state.level_up;
		if(type == skill_type.level)
		{
			if(data[? skill_data.max_level] <= skill_level)
			{
				return skill_state.max_level;
			}
			else
			{
				return skill_state.level_up;
			}
		}
	}
	
	// 이전 스킬을 찍었는지 체크.
	var skill_befores = data[? skill_data.before];
	if(skill_befores != undefined)
	{
		var skill_befores_size = ds_list_size(skill_befores);
		for(var i = 0;i < skill_befores_size;++i)
		{
			var before_id = skill_befores[| i];
			var before_state = get_skill_state(before_id);
			if(before_state == skill_state.lock || before_state == skill_state.unlock)
			{
				return skill_state.lock;
			}
		}
	}
	
	return skill_state.unlock;
}
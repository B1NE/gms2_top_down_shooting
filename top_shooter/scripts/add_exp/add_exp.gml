/// @description add_exp(exp)
/// @function add_exp
/// @param exp

with(PlayerLevelManager)
{
	cur_exp += argument0;
	
	if(cur_exp >= next_target_exp)
	{
		var dist = next_target_exp - before_target_exp;
		cur_level++;
		before_target_exp = next_target_exp;
		next_target_exp += dist + int64(dist * level_up_multi_value);
		
		with(SkillManager)
		{
			skill_point++;
		}
	}
	
	cur_gauge_value = (cur_exp - before_target_exp) / (next_target_exp - before_target_exp);
}
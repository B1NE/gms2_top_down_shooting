with(SkillManager)
{
	if(other.state == skill_state.level_up || other.state == skill_state.unlock)
	{
		if(skill_point > 0)
		{
			skill_levelup(other.skill_id);
		}
	}
}
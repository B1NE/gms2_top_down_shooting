enum skill_type
{
	once,
	level,
	infinite,
}

enum skill_data
{
	id = 0,
	name = 1,
	desc = 2,
	level = 10,
	max_level = 11,
	before = 100,
	type = 1000
}

skill_list = ds_list_create();
add_skill(1, "skill_1", "skill_1_desc", 1, 1, skill_type.once);
add_skill(2, "skill_2", "skill_2_desc", 1, 10, skill_type.level, 1);
add_skill(3, "skill_3", "skill_3_desc", 1, 10, skill_type.level, 1);
add_skill(4, "skill_4", "skill_4_desc", 1, 10, skill_type.level, 1);
add_skill(5, "skill_5", "skill_5_desc", 1, 10, skill_type.level, 1);
add_skill(6, "skill_6", "skill_6_desc", 1, 10, skill_type.level, 1);
add_skill(7, "skill_7", "skill_7_desc", 1, 10, skill_type.level, 1);
add_skill(8, "skill_8", "skill_8_desc", 1, 10, skill_type.level, 2, 7);
add_skill(9, "skill_9", "skill_9_desc", 1, 10, skill_type.level, 2, 3);
add_skill(10, "skill_10", "skill_10_desc", 1, 10, skill_type.level, 3, 4);
add_skill(11, "skill_11", "skill_11_desc", 1, 10, skill_type.level, 4, 5);
add_skill(12, "skill_12", "skill_12_desc", 1, 10, skill_type.level, 5, 6);
add_skill(13, "skill_13", "skill_13_desc", 1, 10, skill_type.level, 6, 7);

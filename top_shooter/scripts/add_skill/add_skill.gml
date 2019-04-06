/// @description add_skill(id, name, desc, level, max_level, type, before_1, before_2)
/// @function add_skill
/// @param id
/// @param name
/// @param desc
/// @param level
/// @param max_level
/// @param type
/// @param before

var data = ds_map_create();
ds_map_add(data, skill_data.id, argument[0]);
ds_map_add(data, skill_data.name, argument[1]);
ds_map_add(data, skill_data.desc, argument[2]);
ds_map_add(data, skill_data.level, argument[3]);
ds_map_add(data, skill_data.max_level, argument[4]);
ds_map_add(data, skill_data.type, argument[5]);

if(argument_count > 6)
{
	var befores = ds_list_create();
	ds_list_add(befores, argument[6]);
	if(argument_count > 7)
	{
		ds_list_add(befores, argument[7]);
	}
	
	ds_map_add_list(data, skill_data.before, befores);
}

ds_list_add(skill_list, data);
ds_list_mark_as_map(skill_list, ds_list_size(skill_list) - 1);


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
		skill_point--;
		
		switch(data[? skill_data.id])
		{
			/*                      33 
			 *                20  19  18  17
			 *          34  21      09      16  32
			 *            22  10  04  03  08  15
			 *			23      05  01  02      14
			 *            24  11  06  07  13  31
			 *          35  25      12      30  37
			 *                26  27  28  29
			 *                      36
			 */
			 
			/// depth 0.
			#region skill_1 // 다음 스킬을 배울 수 있는 디폴트 스킬 [랜덤 총 선택]
			case 1: 
			{
				weapon_random_change();
			}
			break;
			#endregion
			
			// depth 1.
			#region skill_2 // player의 이동 속도 0.1 만큼 올립니다.
			case 2: 
			{
				with(objPlayer)
				{
					entity_data[? e_add_data.move_speed] += 0.1;
					entity_data[? e_cur_data.move_speed] += 0.1;
				}
			}
			break;
			#endregion
			#region skill_3 // player의 연사 속도를 높입니다.
			case 3: 
			{
				with(objPlayer)
				{
					entity_data[? e_add_data.attack_delay] -= 0.1;
					entity_data[? e_cur_data.attack_delay] -= 0.1;
				}
			}
			break;
			#endregion
			#region skill_4 // player의 장전 속도를 높입니다.
			case 4: 
			{
				with(objPlayer)
				{
					entity_data[? e_add_data.weapon_reload_time] -= 0.1;
					entity_data[? e_cur_data.weapon_reload_time] -= 0.1;
				}
			}
			break;
			#endregion
			#region skill_5 // player의 데미지를 높입니다.
			case 5: 
			{
				with(objPlayer)
				{
					entity_data[? e_add_data.damage] += 1;
					entity_data[? e_cur_data.damage] += 1;
				}
			}
			break;
			#endregion
			#region skill_6 // player의 쉴드량을 높입니다.
			case 6: 
			{
				with(objPlayer)
				{
					entity_data[? e_add_data.shield] += 5;
					//entity_data[? e_cur_data.damage] += 1;
				}
			}
			break;
			#endregion
			#region skill_7 // player의 넉백양을 높입니다.
			case 7: 
			{
				with(objPlayer)
				{
					entity_data[? e_cur_data.force] += 1;
					entity_data[? e_add_data.force] += 1;
				}
			}
			break;
			#endregion
			
			// depth 2.
			#region skill_8 // player의 주변으로 핵폭발을 일으킵니다.
			case 8: 
			{
				
			}
			break;
			#endregion
			#region skill_9 // 5초간 적들을 얼립니다.
			case 9:
			{
				
			}
			break;
			#endregion
			#region skill_10 // 랜덤 총 선택.
			case 10:
			{
				weapon_random_change();
			}
			break;
			#endregion
		}
	}
}
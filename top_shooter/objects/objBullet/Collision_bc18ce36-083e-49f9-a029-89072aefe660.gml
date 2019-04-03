if(!instance_exists(objPlayer)) return;

with (other) 
{	
	var calcDamage = objPlayer.entity_data[? e_cur_data.damage] + other.bullet_data[? b_set_data.damage];
	if(calcDamage > 0)
	{
		entity_data[? e_cur_data.hp] -= calcDamage;

		repeat (irandom_range(2, 4))
		{
			instance_create_layer(x + random_range(-15, 15), y + random_range(-15, 15), "Floor", objBlood);
		}
	}
	
	var speedXNormal = other.hspeed / other.speed;
	var speedYNormal = other.vspeed / other.speed;
	
	var weapon_force = other.bullet_data[? b_set_data.force];
	var enemy_force = entity_data[? e_set_data.force];
	force_x = speedXNormal * max(0, (weapon_force - enemy_force));
	force_y = speedYNormal * max(0, (weapon_force - enemy_force));
}

instance_destroy();
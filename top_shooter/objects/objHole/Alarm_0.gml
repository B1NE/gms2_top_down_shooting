if (++current_count <= create_count) {
	with (instance_create_layer(x, y, "Enemy", objEnemy1))
		angle = random(360);

	alarm_add(self, 0, random_range(50, 80));
} else {
	is_opened = false;	
}
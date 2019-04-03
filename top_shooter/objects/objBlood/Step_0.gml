image_alpha -= 0.01 * global.game_speed;

if (image_alpha <= 0)
	instance_destroy();
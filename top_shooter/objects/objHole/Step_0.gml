if (is_opened) {
	image_xscale = min(1, image_xscale + 0.02 * global.game_speed);
	image_yscale = image_xscale;
} else {
	image_xscale -= 0.02 * global.game_speed;
	image_yscale = image_xscale;
	
	if (image_xscale <= 0)
		instance_destroy();
}
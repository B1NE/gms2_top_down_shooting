
var targetScale = ease_in_quad(scale_value);
var targetColor = make_color_rgb(255 * targetScale, 255 * targetScale, 255);
alpha_value -= 0.005 * global.game_speed;


draw_sprite_ext(sprBullet4, -1, x, y, targetScale, targetScale, rotation_value, targetColor, alpha_value);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprBullet4, -1, x, y, targetScale, targetScale, rotation_value, targetColor, alpha_value);
gpu_set_blendmode(bm_normal);


if(alpha_value < 0)
{
	instance_destroy();
}
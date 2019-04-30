zui_set_enabled(false);

zui_set_size(389, 77);
zui_set_anchor(0, 0);

if(!instance_exists(PlayerLevelManager))
{
	instance_create_layer(0, 0, "Managers", PlayerLevelManager);
}
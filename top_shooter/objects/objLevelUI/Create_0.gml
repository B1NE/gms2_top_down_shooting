zui_set_size(389, 77);
zui_set_anchor(0, 0);

if(!instance_exists(PlayerLevelManager))
{
	instance_create_layer(0, 0, "Managers", PlayerLevelManager);
}

with(zui_create(200, 40, objLevelUpButton))
{
	caption = "UP+";
	other.levelupButton = id;
	zui_set_anchor(1, 0);
	zui_set_size(40, 40);
}
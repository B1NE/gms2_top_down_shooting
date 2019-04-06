// weapon change button create.
zui_set_size(340, 100);
zui_set_anchor(0, 0.5);

with(zui_create(10, zui_get_height() * 0.5, objWeaponButton))
{
	weapon_sprite_index = asset_get_index("sprWeapon1");
	weapon_id = 1;
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}

with(zui_create(120, zui_get_height() * 0.5, objWeaponButton))
{
	weapon_sprite_index = asset_get_index("sprWeapon2");
	weapon_id = 2;
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}

with(zui_create(230, zui_get_height() * 0.5, objWeaponButton))
{
	weapon_sprite_index = asset_get_index("sprWeapon3");
	weapon_id = 3;
	zui_set_anchor(0, 0.5);
	zui_set_size(100, 100);
}
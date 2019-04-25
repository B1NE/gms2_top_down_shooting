global.__zui_mx = device_mouse_x_to_gui(0);
global.__zui_my = device_mouse_y_to_gui(0);

zui_update_begin();
global.__is_hover = zui_update() && !zui_get_hover();


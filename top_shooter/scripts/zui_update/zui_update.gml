/// @description zui_update(finger_index, state)
/// @function zui_update
/// @param finger_index
/// @param state
var rx = __dx - __ax * __sx;
var ry = __dy - __ay * __sy;

__mx = global.__zui_mx - rx;
__my = global.__zui_my - ry;

if (__visible && __enabled && global.__zui_mx >= rx && global.__zui_my >= ry && global.__zui_mx < rx + __width * __sx && global.__zui_my < ry + __height * __sy) { 
 for (var i = __childs - 1; i >= 0; --i) {
  with (__child[i]) {
   if (zui_update(argument0, argument1)) {
    other.__hover = 0;
    return 1;
   }
  }
 }
 __hover = 1;
 
 if(argument0 > 0)
 {
	if(argument1 == 0) // pressed
	{
		event_perform(ev_mouse, ev_global_left_press);
	}
	else if(argument1 == 1) // released
	{
		event_perform(ev_mouse, ev_global_left_release);
	}
 }
 
 return 1;
} else {
 __hover = 0;
 return 0;
}

/// @description touch_state_convert(press,fire,release)
/// @function touch_state_convert
/// @param press
/// @param fire
/// @param release
if(argument0) return touch_state.press;
if(argument1) return touch_state.fire;
if(argument2) return touch_state.release;

return touch_state.none;

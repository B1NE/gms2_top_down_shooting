// player 따라 다니기.
x = objPlayer.x;
y = objPlayer.y;


// player hp check.
var targetValue = objPlayer.entity_data[? e_cur_data.hp] / objPlayer.entity_data[? e_set_data.hp];
_gauge_value = lerp(_gauge_value, targetValue, 0.5);
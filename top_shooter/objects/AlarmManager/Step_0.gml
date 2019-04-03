var count = ds_list_size(alarm_list) - 1;
for(var i = count; i >= 0; --i)
{
	var _data = alarm_list[| i];
	var _frame = _data[2];
	_frame -= global.game_speed;
	
	if(_frame <= 0)
	{
		var _id = _data[0];
		var _event = _data[1];
		
		with(_id)
		{
			event_perform(ev_alarm, _event);
		}
		
		ds_list_delete(alarm_list, i);
	}
	else
	{
		_data[2] = _frame;
		alarm_list[| i] = _data;
	}
}
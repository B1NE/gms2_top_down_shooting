if(++cur_interval > fps_interval)
{
	cur_interval = 0;
	cur_fps = fps_real;
}
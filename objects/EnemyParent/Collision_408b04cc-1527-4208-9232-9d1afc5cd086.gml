temppos = instance_nearest(x,y,Mark);
if (temppos != noone)
{
	x = temppos.x;
	y = temppos.y;	
	event_user(0);
}
else { instance_destroy();}


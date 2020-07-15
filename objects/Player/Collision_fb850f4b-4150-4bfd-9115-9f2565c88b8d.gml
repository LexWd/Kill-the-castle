temppos = instance_nearest(x,y,MarkPlayer);
if (temppos != noone)
{
	x = temppos.x;
	y = temppos.y;	
	motion_set(direction,0);
}



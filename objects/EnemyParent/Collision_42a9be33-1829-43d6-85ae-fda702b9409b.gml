if(BrokenBarrel.image_number==2)
{
	hp -= 5;
	flash = 3;
	hitfrom = BrokenBarrel.direction;
	HitedRecently = true;
	alarm_set(0,25);
	
	motion_set(hitfrom,5);
	
}
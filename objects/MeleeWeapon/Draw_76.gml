if(Attack ==false && Switcher == false){
if(Enemy.sprite_index == GargantuaUp || Enemy.sprite_index == GargantuaLeftUp || Enemy.sprite_index == GargantuaRightUp)
{
 depth =600;	
}
else
{
depth = 300;	
}
}
else if(Switcher && floor(image_index) >= 4)
{	
	if (depth!=300)
		depth = 300;
	
}
//if(temp>0&&temp<180) image_yscale = 1;
//else image_yscale = -1;

if(Enemy.sprite_index == GargantuaUp || Enemy.sprite_index == GargantuaLeftUp || Enemy.sprite_index == GargantuaRightUp)
{
 depth =600;	

}
else
{
depth = 300;	
}


temp = point_direction(x,y,Player.x,Player.y);

if(temp >90 && temp<270){

image_xscale = -1;
image_yscale = -1;
image_angle = temp;

}
else {image_xscale=-1; image_yscale = 1;image_angle = temp;}

//if(temp>0&&temp<180) image_yscale = 1;
//else image_yscale = -1;

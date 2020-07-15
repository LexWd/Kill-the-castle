if(!HaveCollision)
{
	HaveCollision = true;
  mywall = instance_create_layer(x+1, y-1, "Collisions", WallObj);
  WallId = mywall;
  with (mywall)
 {
	
	image_xscale = other.sprite_width / (sprite_width*1.1);
	image_yscale = other.sprite_height / (sprite_height*1.5);
 }
}
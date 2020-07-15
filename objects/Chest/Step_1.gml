if(!HaveCollision)
{
	HaveCollision = true;
  mywall = instance_create_layer(x+2, y-2, "Collisions", WallObj);
  WallId = mywall;
  with (mywall)
 {
	
	image_xscale = other.sprite_width / (sprite_width*1.7);
	image_yscale = other.sprite_height / (sprite_height*1.5);
 }
}
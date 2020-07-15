if (keyboard_check(ord("E"))&&!Player.CareSmth)
{
	instance_create_layer(x,y,"Interactive_Objects",AnimationName);
	AnimationName.image_xscale = image_xscale;
	AnimationName.image_yscale = image_yscale;
	instance_destroy();
}
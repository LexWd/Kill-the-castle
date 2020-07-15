if(Player.CareSmth == false)
{
	temp = instance_nearest(x,y,UseItemParent)
	if (distance_to_object(temp)<=20)
	with(temp)
{
	instance_create_layer(x,y,"Weapons",AnimationName);
	instance_destroy();
}
}
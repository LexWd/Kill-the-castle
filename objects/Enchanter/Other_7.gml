if(sprite_index == AnimationAttack)
{
	instance_create_layer(x,y-15,"Weapons2",EnchanterProjectile);
	sprite_index = AnimationDown;
	alarm_set(0,15);
	alarm_set(1,15);
}
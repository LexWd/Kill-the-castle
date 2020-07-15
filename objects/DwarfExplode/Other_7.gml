if(sprite_index == DwarfAttack)
{
if(collision_circle(x,y,64,Player,false,false)!= noone)
{
	Player.HealthPoints -=6;
}
sprite_index = DwarfDead;
layer = 5;
}
else
{
sprite_index = BarrelBroken2;
image_speed=0;
}

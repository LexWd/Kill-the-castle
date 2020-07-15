
if(sprite_index == PlayerFlipLeft || sprite_index == PlayerFlipRight || sprite_index == PlayerFlipUp || sprite_index == PlayerFlipDown || sprite_index == PlayerFlipLeftUp || sprite_index == PlayerFlipLeftDown || sprite_index == PlayerFlipRightUp ||sprite_index == PlayerFlipRightDown )
{
instance_activate_object(PlayerSwordUnused);
AnotherAnimation = true;
Flip = !Flip;
HitedRecently = false;
CareSmth = false;
motion_set(direction,0);
}
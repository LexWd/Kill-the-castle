/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(sprite_index == BerserkAttack)
{
	tempdir = point_direction(x,y,Player.x,Player.y);
	motion_set(tempdir,moveSpeed);
}

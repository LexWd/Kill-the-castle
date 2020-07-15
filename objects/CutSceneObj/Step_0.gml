/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,300,Player,false,false)!=noone  && Wait)
{
Wait=!Wait;
image_speed = 1;
Camera.follow = self;
}

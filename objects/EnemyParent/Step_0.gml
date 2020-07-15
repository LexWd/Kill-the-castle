/// @description Передвижение ( А оно нужно?)

hsp = hMove * moveSpeed;
vsp = vMove * moveSpeed;

if(collision_circle(x,y,22,WallObj,false,false)==noone)
{
  instance_create_layer(x,y,layer,Mark);
}
x += hsp;
y += vsp;



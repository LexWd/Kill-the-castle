/// @description Проверки
if(hp<=0) then 
{
instance_destroy();
instance_create_layer(x,y,"Interactive_Objects",Barrel);
body = instance_create_layer(x,y,"UpperFloor",DeadDwarf);
body.image_angle = point_direction(Player.x,Player.y,x,y);
}
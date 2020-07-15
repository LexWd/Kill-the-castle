if(hp<=0) then 
{
	instance_destroy();
	body = instance_create_layer(x,y,"UpperFloor",DeadGargantua);
	body.image_angle = point_direction(Player.x,Player.y,x,y);
}
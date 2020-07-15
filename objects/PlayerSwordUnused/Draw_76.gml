if(instance_exists(Player)&& !Player.CareSmth)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y)-180;
	x = Player.x+3;
	y = Player.y;
}
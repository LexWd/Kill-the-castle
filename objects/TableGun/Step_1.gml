if (instance_exists(Player))
{
	Player.CareSmth = true;

	image_angle = 0;

	firingdelay = firingdelay - 1;
	recoil = max(0, recoil - 1);
	if (mouse_check_button(mb_left)) && (firingdelay < 0)
	{
		recoil = 4;
		firingdelay = 5;
		with (instance_create_layer(x, y, layer, BulletTable))
		{
			Player.CareSmth = false;
			speed = 4.2;	
			direction = point_direction(x, y, mouse_x, mouse_y);
			BulletTable.image_angle = direction;
		}
		instance_destroy();
	}
	
}
else
instance_destroy();

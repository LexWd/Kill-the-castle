var foe = Player;
path_end();
if (collision_circle(x, y, attackRange, foe, false, true))
{
		// атака
		//instance_destroy();
}
else state = "Chase"
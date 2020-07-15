var foe = Player;
path_end();
if (collision_circle(x, y, chaseRange, foe, false, true))
{
	if (collision_circle(x, y, attackRange, foe, false, true))
	{
	path_end();
	state = "Attack";
	}
	else if (mp_grid_path(grid, path, x, y, foe.x, foe.y, true))
		 {
		   path_start(path, moveSpeed, path_action_stop, false);	
		   if (place_meeting(x, y, WallObj)) then path_end();  
		 }
}
else
{
	state = "Idle";	
}

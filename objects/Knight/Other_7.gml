if(sprite_index == KnightAttack)
{
	if(instance_exists(Player)&&collision_circle(x,y,30,Player,false,false)!=noone)
	if(Player.HitedRecently == false)
	{
		Player.HitedRecently = true;
		Player.alarm[1] = 20;
		Player.HealthPoints -=3;
		Player.flash = 3;
		if(x>Player.x){pdifx=-20;}
		else{pdifx=20;}
		if(y>Player.y){pdify=-20;}
		else{pdify=20;}
		
		
	
        while(!place_meeting(x+ sign(pdifx), Player.y, WallObj) && pdifx !=0)
        {
           Player.x += sign(pdifx);
		   if(pdifx>0)
		   pdifx--;
		   else pdifx++;
        }
       

	
	
        while(!place_meeting(Player.x, Player.y + sign(pdify), WallObj)&& pdify !=0)
        {
            Player.y += sign(pdify);
			if(pdify>0)
		   pdify--;
		   else pdify++;
        
		}
	}
}
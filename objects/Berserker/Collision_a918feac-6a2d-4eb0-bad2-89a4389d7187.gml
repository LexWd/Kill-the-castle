if(sprite_index == BerserkAttack && !Player.HitedRecently)
{
	{
		Player.HitedRecently = true;
		Player.alarm[1] = 20;
		Player.HealthPoints -=3;
		Player.flash = 3;
		if(x>Player.x){pdifx=-16;}
		else{pdifx=16;}
		if(y>Player.y){pdify=-16;}
		else{pdify=16;}
		
		

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
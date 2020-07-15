/// @description Бездействие


        var hdir = choose(-1, 1);
        var vdir = choose(-1, 1);
        if (x < x + hdir * 64) var xx = irandom_range(x, x + hdir * 64);
        else var xx = irandom_range(x + hdir * 64, x);
        if (y < y + vdir * 64) var yy = irandom_range(y, y + vdir * 64);
        else var yy = irandom_range(y + vdir * 64, y);
        while (collision_circle(xx, yy, 21, WallObj, false, false) != noone)
        {
            hdir = choose(-1, 1);
            vdir = choose(-1, 1);
            if (x < x + hdir * 64) xx = irandom_range(x, x + hdir * 64);
            else xx = irandom_range(x + hdir * 64, x);
            if (y < y + vdir * 64) yy = irandom_range(y, y + vdir * 64);
            else yy = irandom_range(y + vdir * 64, y);
         }

                if (x > xx) { sprite_index = AnimationLeft;  }
                else { sprite_index = AnimationRight; }
				
				if(y<yy){sprite_index = AnimationDown;}
				else{sprite_index = AnimationUp;}
				
				if(x>xx && y!=yy) then sprite_index = KnightLeftUp;
				else if(x<xx && y!=yy) then sprite_index = KnightRightUp;
				
				
				
                move_towards_point(xx,yy,moveSpeed);
				
                alarm[1] = room_speed/2;
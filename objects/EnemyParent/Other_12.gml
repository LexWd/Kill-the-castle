/// @description Бездействие


        var hdir = choose(-1, 1);
        var vdir = choose(-1, 1);
        if (x <= x + hdir * 32) var xx = irandom_range(x, x + hdir * 32);
        else var xx = irandom_range(x + hdir * 32, x);
        if (y <= y + vdir * 32) var yy = irandom_range(y, y + vdir * 32);
        else var yy = irandom_range(y + vdir * 32, y);
        while (collision_circle(xx, yy, 21, WallObj, false, false) != noone)
        {
            hdir = choose(-1, 1);
            vdir = choose(-1, 1);
            if (x <= x + hdir * 32) xx = irandom_range(x, x + hdir * 32);
            else xx = irandom_range(x + hdir * 32, x);
            if (y <= y + vdir * 32) yy = irandom_range(y, y + vdir * 32);
            else yy = irandom_range(y + vdir * 32, y);
         }

                if (x > xx) { sprite_index = AnimationLeft;  }
                else { sprite_index = AnimationRight; }
				
				if(y<yy){sprite_index = AnimationDown;}
				else{sprite_index = AnimationUp;}
				
				if(x<xx && y>=yy)  { sprite_index = AnimationLeftUp;}
				else if(x>xx && y>=yy) {sprite_index = AnimationRightUp;}
				else if(x<xx && y<yy)  { sprite_index = AnimationLeft;}
				else if(x>xx && y<yy) {sprite_index = AnimationRight;}
				
               // move_towards_point(xx,yy,moveSpeed);
				motion_set(point_direction(x,y,xx,yy),moveSpeed);
				
				alarm_set(1,10);
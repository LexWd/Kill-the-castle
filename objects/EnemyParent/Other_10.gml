/// @description Попытка в ИИ
if(instance_exists(Player))
if (collision_line(x, y, Player.x, Player.y, WallObj, false, false) == noone) // Нет ли стен на прямой к игроку?
{
    if (collision_circle(x, y, chaseRange, Player, false, false) != noone) // Игрок находится в радиусе погони?
    {
        if (collision_circle(x, y, attackRange, Player, false, false) != noone) // Игрок находится в радиусе атаки?
        {
			// Атака 
			event_user(1);
			alarm_set(1,10);	// Таймер до следующей атаки
        }
        else // Погоня
        {
                if(x>Player.x){sprite_index = AnimationLeft;} else { sprite_index = AnimationRight; }
				if(y<Player.y){sprite_index = AnimationDown;} else{sprite_index = AnimationUp;}
				
				if(x>Player.x && y>Player.y){sprite_index =AnimationLeftUp;}
				else if (x<Player.x && y>Player.y){sprite_index =AnimationRightUp;}
				else if(x>Player.x&& y<Player.y){sprite_index = AnimationLeft;}
				else if (x<Player.x&& y<Player.y) { sprite_index = AnimationRight; }
				
				move_towards_point(Player.x,Player.y,moveSpeed);
                alarm_set(1,5);
        }
    }
    else //Бездействие если игрок не попал в радиус погони
    {  
		event_user(2);            
	} 
}
else //Бездействие если игрок скрыт стеной
{
	event_user(2);
}

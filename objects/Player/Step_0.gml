#region //Переменные
keyLeft = -keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = -keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
SprintOn = keyboard_check_pressed(ord("V"));
SprintOff = keyboard_check_released(ord("V"));

FlipOn = keyboard_check(ord("F"));


if(SprintOn) then Sprint = true;
if(SprintOff) then Sprint = false;


//Просчёт движения
hMove = keyLeft + keyRight;
vMove = keyUp + keyDown;

var dir = "";
if(keyLeft==0 && keyRight ==1) dir = "Right";
else if(keyLeft==-1&&keyRight ==0) dir = "Left";

if(keyUp ==-1&& keyDown == 0) dir +="Up";
else if(keyUp==0 && keyDown == 1) dir+="Down";

hsp = hMove * MovementSpeed;
vsp = vMove * MovementSpeed;
xorigin = x;
yorigin = y;
#endregion

#region // Отсутствие хп
if (HealthPoints <= 0)
{
	instance_destroy();
	game_restart();
	
}
#endregion

#region //Проверка на что-то в руках
if(!CareSmth && AnotherAnimation)
	{instance_activate_object(PlayerSwordUnused);}
else
	{instance_deactivate_object(PlayerSwordUnused);}
#endregion

#region //Колизия по горизонтали
if (place_meeting(x + hsp, y, WallObj))
{
	while (!place_meeting(x + sign(hsp), y, WallObj))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, DoorClosed))
{
	while (!place_meeting(x + sign(hsp), y, DoorClosed))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
#endregion

#region //Колизия по вертикали
if (place_meeting(x, y + vsp, WallObj))
{
	while (!place_meeting(x, y + sign(vsp), WallObj))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, DoorClosed))
{
	while (!place_meeting(x, y + sign(vsp), DoorClosed))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
#endregion

#region //Движение
x += hsp;
y += vsp;

if(Flip && FlipOn)
{
	
	AnotherAnimation = false;
	instance_deactivate_object(PlayerSwordUnused);
	Flip = !Flip;
	HitedRecently = true;
  switch(dir)
  		{
			case "Left":
			sprite_index = PlayerFlipLeft;
			motion_set(180,1.5);
			break;
			
			case "Right":
			sprite_index = PlayerFlipRight;
			motion_set(0,1.5);
			break;
			
			case "Up": 
			sprite_index = PlayerFlipUp;
			motion_set(90,1.5);
			break;
			
			case"Down" :
			sprite_index = PlayerFlipDown;
			motion_set(270,1.5);
			break;
			
			case "LeftUp":
			sprite_index = PlayerFlipLeftUp;
			motion_set(135,1.5);
			break;
			
			case "LeftDown":
			sprite_index = PlayerFlipLeftDown;
			motion_set(225,1.5);
			break;
			
			case "RightUp":
			sprite_index = PlayerFlipRightUp;
			motion_set(45,1.5);
			break;
			
			case "RightDown":
			sprite_index = PlayerFlipRightDown;
			motion_set(315,1.5);
			break;
			
			case "":
			sprite_index = PlayerFlipLeft;
			motion_set(180,1.5);
			break;
			
			CareSmth = true;
	}

	
}
else 
if(AnotherAnimation)
{
if(Sprint)
{
	MovementSpeed = 2;
	if(yorigin<y) then sprite_index = PlayerSprintDownward;
	else if(xorigin>x) then sprite_index = PlayerSprintLeft; 
	else sprite_index = PlayerSprintRight;
}
else
{
	MovementSpeed = 1;
		switch (dir)
		{
			case "Left":
			sprite_index = PlayerMoveLeft;
			break;
			
			case "Right":
			sprite_index = PlayerMoveRight;
			break;
			
			case "Up": 
			sprite_index = PlayerMoveUpward;
			break;
			
			case"Down" :
			sprite_index = PlayerMoveDownward;
			break;
			
			case "LeftUp":
			sprite_index = PlayerMoveLeftUp;
			break;
			
			case "LeftDown":
			sprite_index = PlayerMoveLeft;
			break;
			
			case "RightUp":
			sprite_index = PlayerMoveRightUp;
			break;
			
			case "RightDown":
			sprite_index = PlayerMoveRight;
			break;
			
			case "":
			sprite_index = PlayerStand;
			break;
			
  }
 }
}
#endregion

if(collision_circle(x,y,25,WallObj,false,false)== noone)
{
	instance_create_layer(x,y,layer,MarkPlayer);	
}
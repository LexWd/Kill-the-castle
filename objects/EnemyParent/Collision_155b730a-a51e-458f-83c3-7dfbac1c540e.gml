/// @description Получение урона от игрока

if(!HitedRecently && PlayerSwordInUse.image_index == 2)
{
	hp-=PlayerSwordInUse.Damage;
	flash = 3;
	alarm_set(0,25);
	HitedRecently = true;
	tempdir = point_direction(Player.x,Player.y,x,y);
	motion_set(tempdir,0.12);
	
}
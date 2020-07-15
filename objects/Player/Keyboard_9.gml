if(room != room_last /*&& !instance_exists(EnemyParent)*/)
{
	room_goto_next();
}
else
{
	room_goto_previous();
}
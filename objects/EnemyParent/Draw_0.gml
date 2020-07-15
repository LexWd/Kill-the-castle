/// @description Анимация получения урона
draw_self();
if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

// Тест на соприкосновение со стенами
//if(state)
//{
//	state=!state;
//	shader_set(shRed);
//	draw_self();
//	shader_reset();
//}

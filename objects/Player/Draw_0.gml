draw_self();
if(flash>0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
//draw_healthbar(x-15,y-30,x+15,y-20,)
//scr_draw_custom_guibar(spr_gui_bars,1,HealthPoints,MaxHealth,Camera.x-Camera.view_w_half,Camera.y-Camera.view_h_half,0);



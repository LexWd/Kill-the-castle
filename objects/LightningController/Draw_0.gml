if( !global.effects ) exit;

if( !surface_exists(lighting_surf) )
{
	lighting_surf = surface_create(room_width>>light_scale_shift,room_height>>light_scale_shift);
}

var old_filter = gpu_get_texfilter();
gpu_set_texfilter(true);

surface_set_target(lighting_surf);
draw_clear_alpha(c_black,0);

var old_blend =gpu_get_blendmode();
gpu_set_blendmode(bm_add);

var scaler=0;
var count = ds_list_size(light_list);
for(var i=0;i<count;i++)
{   var pos = ds_list_find_value(light_list, i);
	var xx = (((pos&$ffff)*64)+64-8)>>light_scale_shift;
	var yy = ((((pos>>16)&$ffff)*64)+64-8)>>light_scale_shift;
	var size= (random(1)*0.05)-0.1;
	scaler[i]=size;
	draw_sprite_ext(sLightGlow1stPass,0, xx,yy, 1.6+size,1.6+size,0,c_white,1+size);
}
surface_reset_target();

gpu_set_blendmode(bm_normal);
shader_set(sh_light_shader);
shader_set_uniform_f(u_ambient, 0,0,($50/255.0),0.25);
draw_surface_stretched_ext(lighting_surf,0,0, room_width,room_height,c_black,0.5);
shader_reset();
gpu_set_blendmode(bm_normal);
gpu_set_blendmode(bm_add);
var count = ds_list_size(light_list);
for(var i=0;i<count;i++)
{
	var pos = ds_list_find_value(light_list, i);
	var pos = ds_list_find_value(light_list, i);
	var xx = (((pos&$ffff)*64)+64)-8;
	var yy = ((((pos>>16)&$ffff)*64)+64)-8;
	var size = scaler[i];	
	draw_sprite_ext(sLightGlow2ndPass,0, xx,yy, (0.8+size)*8, (0.8+size)*8,0,$0060FF,0.25+size); //$00AAFF,1);	
}

gpu_set_blendmode(old_blend);
gpu_set_texfilter(old_filter);




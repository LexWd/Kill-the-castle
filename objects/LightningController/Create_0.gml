WallMap = layer_tilemap_get_id("Walls");
map_width = tilemap_get_width(WallMap);
map_height= tilemap_get_height(WallMap);

light_scale_shift = 3;
lighting_surf=-1;
light_list = ds_list_create();	

for(var yy=0;yy<map_height;yy++){
	for(var xx=0;xx<map_width;xx++){
		var tile = tilemap_get(WallMap, xx,yy)&tile_index_mask;
		
		if( tile>=139 && tile <=154){
			var pos = xx | yy<<16;				
			ds_list_add( light_list, pos );		
		}
	}
}

u_ambient = -1;
if(global.effects){
	u_ambient = shader_get_uniform(sh_light_shader,"u_ambient_lighting");
}

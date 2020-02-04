/// @description cut holes in the darkness

///draw the surface
if debug = true
{
	surface_set_target(night_cycle_surf);
	draw_clear_alpha(c_black,0.8);

	//Draw glow on fires in the grid
	gpu_set_blendmode(bm_src_color);
	for (var xx=0; xx<grid.wid; xx++)
	{
		for (var yy=0; yy<grid.hei; yy++)
		{
			if grid.g[xx,yy] == item.Fire
			{
				draw_sprite(glow_spr,0,x+xx*grid.cell_+grid.cell_/2+random_range(-1,1),y+yy*grid.cell_+grid.cell_/2+random_range(-1,1));
			}
		}
	}
	draw_sprite(glow_spr,0,mouse_x,mouse_y);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(night_cycle_surf,0,0,1,1,0,c_white,alpha)
	
	//debug
	draw_set_font(-1);
	draw_text(10,room_height-60,day);
	draw_text(10,room_height-40,time);
	draw_text(10,room_height-20,alpha);
}

/// @description cut holes in the darkness

///draw the surface
if debug = true
{
	surface_set_target(night_cycle_surf);
	draw_clear_alpha(c_black,0.8);

	//Draw glow on fires in the grid
	for (var xx=0; xx<grid.wid; xx++)
	{
		for (var yy=0; yy<grid.hei; yy++)
		{
			if grid.g[xx,yy] == item.Fire
			{
				gpu_set_blendmode(bm_src_color);
				draw_sprite(glow_spr,0,x+xx*grid.cell_+grid.cell_/2+random_range(-1,1),y+yy*grid.cell_+grid.cell_/2+random_range(-1,1));
        
				//draw_set_blend_mode(bm_subtract);
				//draw_set_colour(c_white);
				//draw_circle(x + random_range(-1,1),y + random_range(-1,1), 30 + random_range(-1,1),false);
				gpu_set_blendmode(bm_normal);
			}
		}
	}
	surface_reset_target();
	draw_surface_ext(night_cycle_surf,0,0,1,1,0,c_white,alpha)
}
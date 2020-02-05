/// @description draw grid

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		
		draw_sprite(grid_spr,0,x+xx*cell_,y+yy*cell_);
		if g[xx,yy] >-1 && g[xx,yy] != item.Fire
		{
				draw_sprite_ext(high_res_items,g[xx,yy],x+xx*cell_,y+yy*cell_,scale,scale,0,c_white,1);
		}
		else if g[xx,yy] ==item.Fire
			draw_sprite_ext(Flames_ani,fire_ani,x+xx*cell_,y+yy*cell_,scale,scale,0,c_white,1);
	}
}

//debug
/*
draw_set_color(c_red);
draw_text(20,20,holding);
draw_text(20,40,temp_result);
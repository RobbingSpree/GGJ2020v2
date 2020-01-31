/// @description draw grid

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		draw_sprite(grid_spr,0,x+xx*cell_,y+yy*cell_);
		if g[xx,yy] != noone
			draw_sprite(item_spr,g[xx,yy],x+xx*cell_,y+yy*cell_);
	}
}

//debug
draw_set_color(c_red);
draw_text(20,20,mgx);
draw_text(20,40,mgy);
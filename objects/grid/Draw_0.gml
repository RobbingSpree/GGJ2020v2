/// @description draw grid

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		
		draw_sprite(grid_spr,0,x+xx*cell_,y+yy*cell_);
		if g[xx,yy] >-1
		{
			if g[xx,yy] < item.Sprout
				draw_sprite(high_res_items,g[xx,yy],x+xx*cell_,y+yy*cell_);
			else
				draw_sprite(item_spr,g[xx,yy],x+xx*cell_,y+yy*cell_);
		}
		else if g[xx,yy] ==-2
			draw_sprite(fire_spr,fire_ani,x+xx*cell_,y+yy*cell_);
	}
}

if holding != noone && g[mgx,mgy] >-1
{
	draw_sprite_ext(cell_edge_spr,0,x+mgx*cell_+cell_/2,y+mgy*cell_+cell_/2,1,1,closest_edge,c_white,1);
}

//debug
/*
draw_set_color(c_red);
draw_text(20,20,mgx);
draw_text(20,40,mgy);
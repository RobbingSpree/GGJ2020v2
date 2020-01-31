/// @description draw grid

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		draw_sprite(grid_spr,0,x+xx*cell_,y+yy*cell_);
	}
}
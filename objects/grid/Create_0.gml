
wid = 10; //width of grid
hei = 10; //height of grid
cell_ = 64; //cell width and height
g=[]; //grid all items are stored in
mgx = 0; //mouse grid pos x
mgy = 0; //mouse grid pos y
holding = noone;
pickup_x = -1;
pickup_y = -1;
closest_edge = 0;

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		g[xx,yy]=noone; //intalize the grid
	}
}

g=fill_the_board(g,wid,hei);
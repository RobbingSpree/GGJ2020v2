
var dir = argument0;
var shuff_in = -1;
var shuff_out = -1;

shuff_in = grid.g[mgx,mgy];
if dir == 2 {
//move right
	for (var i=0; i<grid.wid-grid.mgx-1; i++)
	{
		shuff_out = grid.g[mgx+i+1,mgy];
		if shuff_out == noone
			return -1;
		grid.g[mgx+i+1,mgy] = shuff_in;
		shuff_in = shuff_out;
	}
} else if dir == 3 { 
// move up
	for (var i=0; i<grid.mgy; i++)
	{
		shuff_out = grid.g[mgx,mgy-i-1];
		if shuff_out == noone
			return -1;
		grid.g[mgx,mgy-i-1] = shuff_in;
		shuff_in = shuff_out;
	}
} else if dir == 4 || dir == 0 {
// move left
	for (var i=0; i<grid.mgx; i++)
	{
		shuff_out = grid.g[mgx-i-1,mgy];
		if shuff_out == noone
			return -1;
		grid.g[mgx-i-1,mgy] = shuff_in;
		shuff_in = shuff_out;
	}
} else if dir == 1 {
//move down
	for (var i=0; i<grid.hei-grid.mgy-1; i++)
	{
		shuff_out = grid.g[mgx,mgy+i+1];
		if shuff_out == noone
			return -1;
		grid.g[mgx,mgy+i+1] = shuff_in;
		shuff_in = shuff_out;
	}
}

return shuff_out;
var itm = argument0;

var gh = grid.hei; //grid height
var gw = grid.wid; //grid width
var fx=-1; //cell x corord
var fy=-1; //cell y coord

var limit = irandom(10); // find the nth empty spot in the array, starts from the top if none are found
var found = 0;
while found < limit
{
	for (var xx=0; xx<gw; xx++)
	{
		for (var yy=0; yy<gh; yy++)
		{
			if grid.g[xx,yy] == -1
			{
				fx = xx;
				fy = yy;
				found +=1;
			}
		}
	}
	found +=1; //bumps up the found count regardless of if one is found just in case
}

if fx != -1 && fy != -1
{
	grid.g[fx,fy] = itm; //add a new item to the board
}
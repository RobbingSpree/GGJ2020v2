var change_board = argument0;
var dropping = argument1;
var dropon = argument2;
var xx = argument3;
var yy = argument4;

var combo = -1;
combo = ds_grid_get(combo_table,dropping,dropon);

if combo != -1
{
	if change_board
	{
		grid.g[xx,yy]=combo;
		unlocks[dropping,dropon]+=1;
		unlocks[dropon,dropping]+=1;
	}
	return combo;
} else {
	grid.g[grid.pickup_x,grid.pickup_y] = dropping;
	unlocks[dropping,dropon]-=1;
	unlocks[dropon,dropping]-=1;
}
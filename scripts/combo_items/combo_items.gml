var gridy = argument0;
var dropping = argument1;
var dropon = argument2;
var xx = argument3;
var yy = argument4;

var combo = -1;
combo = ds_grid_get(combo_table,dropping,dropon);

if combo != -1
{
	grid.g[xx,yy]=combo;
	return combo;
} else {
	grid.g[grid.pickup_x,grid.pickup_y] = dropping;
}
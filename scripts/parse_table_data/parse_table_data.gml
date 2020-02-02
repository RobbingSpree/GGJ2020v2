var table = argument0;

for (var xx=1; xx<ct_size; xx++)
{
	for (var yy=1; yy<ct_size; yy++)
	{
		var temp = ds_grid_get(table,xx,yy);
		temp = string_to_enum(temp);
		ds_grid_set(table,xx-1,yy-1,temp);
	}
}

return table;
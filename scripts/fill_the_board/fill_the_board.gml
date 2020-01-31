var gridy = argument0;
var wid = argument1;
var hei = argument2;

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		gridy[xx,yy]=irandom(item.Dirt);
	}
}

return gridy;
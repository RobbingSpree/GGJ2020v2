
switch argument0
{
	case item.Grass:		return item.Long_Grass;
	case item.Stick:		return -1;
	case item.Small_animal:	return item.Medium_Animal;
	case item.Shrub:		return -1;
	case item.Dirt:			return item.Grass;
}
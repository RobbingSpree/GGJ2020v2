
switch argument0
{
	case item.Grass:		return -1;
	case item.Stick:		return -1;
	case item.Small_animal:	return item.Medium_Animal;
	case item.Shrub:		return item.Grove;
	case item.Dirt:			return -1;
}
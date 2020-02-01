
switch argument0
{
	case item.Grass:		return item.Medium_Animal;
	case item.Stick:		return -1;
	case item.Small_animal: make_new_item(item.Small_animal);	return item.Small_animal; // needs extra functionality
	case item.Shrub:		return -1;
	case item.Dirt:			return -1;
}
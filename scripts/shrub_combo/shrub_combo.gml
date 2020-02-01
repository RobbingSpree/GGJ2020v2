
switch argument0
{
	case item.Grass:			return -1;
	case item.Stick:			return -1;
	case item.Small_animal:		return item.Medium_Animal;
	case item.Shrub:			return item.Grove;
	case item.Dirt:				return -1;
	case item.Poo:				return item.Tree;
	case item.Rock:				return -1;
	case item.Ore:				return -1;
	case item.Sprout:			return -1;
	case item.Coal:				return -1;
	case item.Insect:			return -1;
	case item.Bee:				return item.Flower;
	case item.Water:			return item.Marsh;
	case item.Long_Grass:		return -1;
	case item.Medium_Animal:	return -1;
	case item.Crop:				return -1;
	case item.Moss:				return -1;
	case item.Flower:			return -1;
	case item.Bundle_of_sticks:	return -1;
	case item.Corpse:			return -1;
	case item.Poo_stick:		return -1;
	case item.Rock_axe:			return -1;
	case item.Mushrooms:		return -1;
	case item.Pencil:			return -1;
	case item.Turtle:			return -1;
	case item.Grove:			return -1;
	case item.Tree:				return -1;
	case item.Marsh:			return -1;
	case item.Fetaliser:		return -1;
	case item.Mud:				return -1;
	case item.Bigger_poo:		return -1;
	case item.Beatle:			return -1;
	case item.Rock_garden:		return -1;
	case item.Diamond:			return -1;
	case item.Paste:			return -1;
	case item.Creek:			return -1;
	case item.Swarm:			return -1;
	case item.Wasp:				return -1;
	case item.Hive:				return -1;
	case item.Hay_Stack:		return -1;
	case item.Bigger_Crops:		return -1;
	case item.Longer_Grass:		return -1;
	default: return -1;
}
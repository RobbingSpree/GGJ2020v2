var gridy = argument0;
var dropping = argument1;
var dropon = argument2;
var xx = argument3;
var yy = argument4;

//get the direction to move things in
//fix later, assume move left

var combo = -1;
combo = combo_table[dropping,dropon];
/*
switch dropping
{
	case item.Grass: combo=Grass_combo(dropon); break;
	case item.Stick: combo=Stick_combo(dropon); break;
	case item.Small_animal: combo=Small_animal_combo(dropon); break;
	case item.Shrub: combo=Shrub_combo(dropon); break;
	case item.Dirt: combo=Dirt_combo(dropon); break;
	case item.Poo: combo=Poo_combo(dropon); break;
	case item.Rock: combo=Rock_combo(dropon); break;
	case item.Ore: combo=Ore_combo(dropon); break;
	case item.Sprout: combo=Sprout_combo(dropon); break;
	case item.Coal: combo=Coal_combo(dropon); break;
	case item.Insect: combo=Insect_combo(dropon); break;
	case item.Bee: combo=Bee_combo(dropon); break;
	case item.Water: combo=Water_combo(dropon); break;
	case item.Long_Grass: combo=Long_Grass_combo(dropon); break;
	case item.Medium_Animal: combo=Medium_Animal_combo(dropon); break;
	case item.Crop: combo=Crop_combo(dropon); break;
	case item.Flower: combo=Flower_combo(dropon); break;
	case item.Bundle_of_sticks: combo=Bundle_of_sticks_combo(dropon); break;
	case item.Corpse: combo=Corpse_combo(dropon); break;
	default: combo = -1;
}
*/

if combo != -1
{
	grid.g[xx,yy]=combo;
} else {
	grid.g[grid.pickup_x,grid.pickup_y] = dropping;
}
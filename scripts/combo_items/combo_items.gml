var gridy = argument0;
var dropping = argument1;
var dropon = argument2;
var xx = argument3;
var yy = argument4;

//get the direction to move things in
//fix later, assume move left
x_mov = -1;
y_mov = 0;

var combo = -1;

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
	case item.Ore: combo=Ore_combo(dropon); break;
	default: combo = -1;
}


if combo != -1
{
	grid.g[xx,yy]=combo;
} else {
	grid.g[grid.pickup_x,grid.pickup_y] = dropping;
}
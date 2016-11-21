/// instance_nearest_of(x, y, enemy1, enemy2);

var xx = argument0;
var yy = argument1;
var obj1 = argument2;
var obj2 = argument3;

var list = ds_list_create(); //initialise the list of objects
var inst1;
var inst2;

do
{
    // Find the instance nearest to the x & y position
    inst1 = instance_nearest(xx, yy, obj1);
    inst2 = instance_nearest(xx, yy, obj2);
    
    if (inst1 != noone and inst2 != noone)
    {
         if(point_distance(xx, yy, inst1.x, inst1.y) < point_distance(xx, yy, inst2.x, inst2.y)){
            ds_list_add(list, inst1);
            instance_deactivate_object(inst1);
         }else{
            ds_list_add(list, inst2);
            instance_deactivate_object(inst2);
         }
    }else if(inst1 != noone and inst2 == noone){
        ds_list_add(list, inst1);
        instance_deactivate_object(inst1);
    }else if(inst1 == noone and inst2 != noone){
        ds_list_add(list, inst2);
        instance_deactivate_object(inst2);
    }
    

    
    /*
      If an instance is found, add it to the list
      and deactivate the instance. It'll be
      reactivated later.
    */
    
   /* if (inst != noone)
    {
        ds_list_add(list, inst);
        instance_deactivate_object(inst);
    }*/
}
until (inst1 == noone and inst2 == noone); // break the loop when there's no more instances

// Reactivate the deactivated objects
for (var i = 0; i < ds_list_size(list); i++)
{
    instance_activate_object(list[|i]);
}

// Return the list of instances
return list;

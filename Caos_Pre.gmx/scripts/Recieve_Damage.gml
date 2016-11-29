/// Recieve_Damage(direction, building_id);
var dir = argument[0];
var building_father1 = argument[1];
if(instance_exists(Rage)) exit;

switch(dir){
    case "down":
        
        if(image_xscale == 1){ xx_damage = building_father1.bbox_right + 1 - sprite_get_width(spr_building_damage); }
        else if(image_xscale == -1){ xx_damage = building_father1.bbox_left; }
            
        if(bbox_bottom >= 390) exit;
        with(building_father1) building_life -= 1;
        
        with(building_father1){
            for(var i = 0; i < ds_grid_width(damage_grid); i++){
                if(ds_grid_get(damage_grid, i, 0) == ""){                
                
                    ds_grid_add(damage_grid, i, 0, floor(xx_damage));
                    
                    if(building_father1.bbox_bottom - Player.y <= 95){
                      // ds_grid_add(damage_grid, i, 1, bbox_bottom - sprite_get_height(spr_building_damage)+1);
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - (bbox_bottom - sprite_get_height(spr_building_damage)+1)));
                        
                        if(Player.image_xscale == 1) ds_grid_add(damage_grid, i, 2, 9);
                        else ds_grid_add(damage_grid, i, 2, 6);
                        
                    }else{
                        //ds_grid_add(damage_grid, i, 1, Player.y + sprite_height/3);
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - (Player.y + sprite_height/4)));
                        
                        if(Player.image_xscale == -1) ds_grid_add(damage_grid, i, 2, choose(0, 1));
                        else ds_grid_add(damage_grid, i, 2, choose(7,8));
                    }
                    

                //    show_debug_message('x: ' + string(ds_grid_get(damage_grid, i, 0)));
                 //   show_debug_message('y: ' + string(ds_grid_get(damage_grid, i, 1)));
                    // Powers - D
                    var rand = choose(1,2,2,2,2);
                    if(rand == 1){
                        var x1 = ds_grid_get(damage_grid, i, 0);
                        var y1 = ds_grid_get(damage_grid, i, 1);

                        if(image_xscale == -1) var xxplus = 0;
                        else var xxplus = 10;
                        
                        if (!instance_nearest(x1 + xxplus, (y+10)- y1, Poder)){
                            inst = instance_create(x1 + xxplus, (y+10)- y1, Poder);
                        }
                    }
                    //
                    
                      // Destroy a window if there is one.
                    if(instance_number(obj_ventana) > 0){
                        var ventana = instance_nearest(ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage), self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage), obj_ventana);
                        with (ventana) image_blend = c_red;
                        if(collision_rectangle(
                            ds_grid_get(damage_grid, i, 0) + 6 ,
                            self.y - ds_grid_get(damage_grid, i, 1) + 6, 
                            ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage) - 6,
                            self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage) - 6, 
                            ventana, 
                            0,
                            0
                        )){
                            with (ventana){
                                if(instance_exists(inst)) with inst instance_destroy();
                                /*var person = instance_nearest(x, y, Persona);
                                if(position_meeting(x + sprite_width/2, y + sprite_height/2, person)){
                                   with(person){
                                       //alarm[0] = -1; alarm[1] = -1;
                                       instance_destroy();         
                                   }
                                }*/
                                instance_destroy();
                            }
                        }
                    }
                    
                    break;
                }
            }
        }
        
        Play_Track("attack");

    break;
    case "front": 
       // show_debug_message(building_id.bbox_top - Player.y); // -15 top coso.


        if(image_xscale == 1) xx_damage = bbox_left - sprite_get_width(spr_building_damage)/2;
        else xx_damage = bbox_right - sprite_get_width(spr_building_damage)/2;
        with(building_father1) building_life -= 1;
        
        with(building_father1){
  
            for(var i = 0; i < ds_grid_width(damage_grid); i++){
                if(ds_grid_get(damage_grid, i, 0) == ""){
                
                    var range = irandom_range(-5,15);
                    ds_grid_add(damage_grid, i, 0, floor(xx_damage + range));
                    
                    if(building_father1.bbox_top - Player.y >= -15){
                      //  ds_grid_add(damage_grid, i, 1, bbox_top);  
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - building_father1.bbox_top));              
                        ds_grid_add(damage_grid, i, 2, choose(4, 5));
                    
                    }else{
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - (Player.y - sprite_get_height(spr_building_damage)/2)));  
                       // ds_grid_add(damage_grid, i, 1, Player.y - sprite_get_height(spr_building_damage)/2);              
                        ds_grid_add(damage_grid, i, 2, choose(2, 3));
                    }
                    
                 //   show_debug_message('x: ' + string(ds_grid_get(damage_grid, i, 0)));
                  //  show_debug_message('y: ' + string(ds_grid_get(damage_grid, i, 1)));
                    
                    // Powers - D
                    var rand = choose(1,2,2,2,2);
                    if(rand == 1){
                        var x1 = ds_grid_get(damage_grid, i, 0);
                        var y1 = ds_grid_get(damage_grid, i, 1);
                        if(image_xscale == -1) var xxplus = 0;
                        else var xxplus = 10;           
                        if (!instance_nearest(x1 + xxplus, (y+10)- y1, Poder)){
                            inst = instance_create(x1 + xxplus, (y+10)- y1, Poder);
                        }
                    }
                    //
                    
                    // Destroy a window if there is one.
                    if(instance_number(obj_ventana) > 0){
                        var ventana = instance_nearest(ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage), self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage), obj_ventana);
                        with (ventana) image_blend = c_red;
                        if(collision_rectangle(
                            
                            ds_grid_get(damage_grid, i, 0) + 6,
                            self.y - ds_grid_get(damage_grid, i, 1) + 6, 
                            ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage) - 6,
                            self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage) - 6, 
                            ventana, 
                            0,
                            0
                        )){
                            with (ventana){
                                if(instance_exists(inst)) with inst instance_destroy();
                              /*  var person = instance_nearest(x, y, Persona);
                                if(position_meeting(x + sprite_width/2, y + sprite_height/2, person)){
                                   with(person){
                                       //alarm[0] = -1; alarm[1] = -1;
                                       instance_destroy();         
                                   }
                                }*/
                                instance_destroy();
                            }
                        }
                    }
                    
                    
                    break;
                }
            }
        }
        
        Play_Track("attack");
        
    break;
    case "other":
        
  //      building_father1 = building_id.id;
        if(image_xscale == 1) xx_damage = bbox_right - sprite_get_width(spr_building_damage)/2;
        else xx_damage = bbox_left - sprite_get_width(spr_building_damage)/2;
        with(building_father1) building_life -= 1;
        
          
        with(building_father1){
  
            for(var i = 0; i < ds_grid_width(damage_grid); i++){
                if(ds_grid_get(damage_grid, i, 0) == ""){
                
                    var range = irandom_range(-15,15);
                    ds_grid_add(damage_grid, i, 0, floor(xx_damage + range));
                    
                    if(building_father1.bbox_top - Player.y >= -15){
                      //  ds_grid_add(damage_grid, i, 1, bbox_top);  
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - building_father1.bbox_top));              
                        ds_grid_add(damage_grid, i, 2, choose(4, 5));
                    
                    }else{
                        ds_grid_add(damage_grid, i, 1, floor(building_father1.y - (Player.y - sprite_get_height(spr_building_damage)/2)));  
                       // ds_grid_add(damage_grid, i, 1, Player.y - sprite_get_height(spr_building_damage)/2);              
                        ds_grid_add(damage_grid, i, 2, choose(2, 3));
                    }
                    
                    // Powers - D
                    var rand = choose(1,2,2,2,2);
                    if(rand == 1){
                        var x1 = ds_grid_get(damage_grid, i, 0);
                        var y1 = ds_grid_get(damage_grid, i, 1);
                        if (!instance_nearest(x1+10, (y+10)- y1, Poder)){
                            inst = instance_create(x1+10, (y+10)- y1, Poder);
                        }
                    }
                    //
                    
                    // Destroy a window if there is one.
                    if(instance_number(obj_ventana) > 0){
                        var ventana = instance_nearest(ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage), self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage), obj_ventana);
                        with (ventana) image_blend = c_red;
                        if(collision_rectangle(
                            ds_grid_get(damage_grid, i, 0) + 6,
                            self.y - ds_grid_get(damage_grid, i, 1) + 6, 
                            ds_grid_get(damage_grid, i, 0) + sprite_get_width(spr_building_damage) - 6,
                            self.y - ds_grid_get(damage_grid, i, 1) + sprite_get_height(spr_building_damage) - 6, 
                            ventana, 
                            0,
                            0
                        )){
                            with (ventana){
                                var person = instance_nearest(x, y, Persona);
                                if(position_meeting(x + sprite_width/2, y + sprite_height/2, person)){
                                   with(person){
                                       //alarm[0] = -1; alarm[1] = -1;
                                       instance_destroy();         
                                   }
                                }
                                instance_destroy();
                            }
                        }
                    }
                    
                    
                    break;
                }
            }
        }
        
        Play_Track("attack");
        
    break;
}


/*

  
      /* 
        FORMA 2.
        with(building_id){
  
            for(var i = 0; i < ds_grid_width(damage_grid); i++){
                if(ds_grid_get(damage_grid, i, 0) == ""){
                    show_debug_message("work");
                
                    ds_grid_add(damage_grid, i, 0, xx_damage);
                    ds_grid_add(damage_grid, i, 1, Player.y + sprite_get_width(Player.sprite_index)/3 + range);
                    ds_grid_add(damage_grid, i, 2, choose(0, 1));
                    
                    var scale = noone;
                    if(Player.image_xscale == 1) { scale = -1 }
                    else if(Player.image_xscale == -1) { scale  = 1;  }
       
                    ds_grid_add(damage_grid, i, 3, scale);
                    
                    break;
                }
            }
        }
        
        FORMA 1. 
        
        if(instance_exists(Damage)){
            var dmg_near = instance_nearest(Damage.x, Damage.y, Damage);
            if(dmg_near != noone) if(point_direction(xx_damage, y + sprite_height/3, dmg_near.x, dmg_near.y) <= 1) exit;
        }
        
        var damage = instance_create(xx_damage, y + sprite_height/3, Damage);
                     
        building_owner = building_id;
        if(image_xscale == 1) with(damage){ image_xscale = -1; x += 1; image_index = choose(0,1); bdo = building_owner; }
        else if(image_xscale == -1) with(damage){ image_xscale = 1; image_index = choose(0,1) bdo = building_owner; }
        building_owner = "";
        
        
         if(instance_exists(Damage)){
            var dmg_near = instance_nearest(Damage.x, Damage.y, Damage);
            if(dmg_near != noone) if(point_direction(xx_damage, y + sprite_height/3, dmg_near.x, dmg_near.y) <= 1) exit;
        }
        
        with(building_id) building_life -= 1;
    
        var range = irandom_range(-10,10);
        if(xx_damage == bbox_right){ var damage = instance_create(xx_damage - sprite_get_width(spr_building_damage)/2 + range, y - sprite_get_height(spr_building_damage)/2, Damage); }
        else{ var damage = instance_create(xx_damage - sprite_get_width(spr_building_damage)/2 + range, y - sprite_get_height(spr_building_damage)/2, Damage); }
        
        building_owner = building_id;
        with(damage){ bdo = building_owner; }
        building_owner = "";
       */
             

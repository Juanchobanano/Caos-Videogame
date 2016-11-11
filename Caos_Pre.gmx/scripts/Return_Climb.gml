/// Return_Climb();
var rango = 12;
if(climbed_building == noone) exit;
if(climbed_building){
    switch(image_xscale){
        case -1: // Right
       //  Create_Debug(climbed_building.bbox_right, climbed_building.bbox_top);
         // 23
            if(point_distance(x + 15, bbox_bottom, climbed_building.bbox_right, climbed_building.bbox_top) < rango){
                if(key_down){
                    x = climbed_building.bbox_right + 16; // 21
                    y = climbed_building.bbox_top - 12;
                    climb = true;
                    grounded = false;    
                    image_xscale = 1;
                }
            } 
        break;
        case 1: // Left.
          // Create_Debug(climbed_building.bbox_left, climbed_building.bbox_top);
            if(point_distance(x - 15, bbox_bottom, climbed_building.bbox_left, climbed_building.bbox_top) < rango){
                if(key_down){
                    x = climbed_building.bbox_left - 16;
                    y = climbed_building.bbox_top - 12
                    climb = true;
                    grounded = false;    
                    image_xscale = -1;
                }
            } 
        break;
    }
}

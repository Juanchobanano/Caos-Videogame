/// Jump_Hspeed();
if (image_xscale == -1){
    if(key_left){
        hsp = climb_speed * image_xscale;
    }else if(key_right){
        hsp = climb_speed * image_xscale * -1;
    }else{
        hsp = climb_speed * image_xscale * -1;
    }
}else{
    if(key_left){
        hsp = climb_speed * image_xscale * -1;
    }else if(key_right){
        hsp = climb_speed * image_xscale;
    }else{
       hsp = climb_speed * image_xscale * -1; 
    }
}

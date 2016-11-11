//if (xstart <  view_wview[0]/2 and x <  view_wview[0]/2){
//Up - Right
if (point_direction(xstart, ystart, x, y) > 30 and point_direction(xstart, ystart, x, y) < 60){
Player.key_up = 1;
Player.key_right = 1;
Player.key_left = 0;
Player.key_down = 0;
}
//Up
if (point_direction(xstart, ystart, x, y) > 60 and point_direction(xstart, ystart, x, y) < 120){
Player.key_up = 1;
Player.key_left = 0;
Player.key_down = 0;
Player.key_right = 0;
}
//Up - Left
if (point_direction(xstart, ystart, x, y) > 120 and point_direction(xstart, ystart, x, y) < 150){
Player.key_up = 1;
Player.key_left = 1;
Player.key_down = 0;
Player.key_right = 0;
}
//Left
if (point_direction(xstart, ystart, x, y) > 150 and point_direction(xstart, ystart, x, y) < 210){
Player.key_left = 1;
Player.key_up = 0;
Player.key_down = 0;
Player.key_right = 0;
}
//Down - Left
if (point_direction(xstart, ystart, x, y) > 210 and point_direction(xstart, ystart, x, y) < 240){
Player.key_down = 1;
Player.key_left = 1;
Player.key_up = 0;
Player.key_right = 0;
}
//Down
if (point_direction(xstart, ystart, x, y) > 240 and point_direction(xstart, ystart, x, y) < 300){
Player.key_down = 1;
Player.key_up = 0;
Player.key_left = 0;
Player.key_right = 0;
}
//Down
if (point_direction(xstart, ystart, x, y) > 300 and point_direction(xstart, ystart, x, y) < 330){
Player.key_down = 1;
Player.key_right = 1;
Player.key_up = 0;
Player.key_left = 0;
}
//Right
if (point_direction(xstart, ystart, x, y) > 330 or point_direction(xstart, ystart, x, y) < 30 and xstart != x){
Player.key_right = 1;
Player.key_up = 0;
Player.key_left = 0;
Player.key_down = 0;
}
/*}else {
//Player.key_up = 0;
//Player.key_left = 0;
//Player.key_down = 0;
//Player.key_right = 0;
}
/*
//Jump
if (x >  view_wview[0]/2){
    if (point_direction(xstart, ystart, x, y) > 30 and point_direction(xstart, ystart, x, y) < 150 and abs(ystart - y) > 64 ){
        if (Player.cont_jump < 1){
            Player.cont_jump ++;
            Player.key_jump = 1;
            //show_debug_message("Saltar");
        }else{
            Player.key_jump = 0;
        }
    }
}

//Attack
if (xstart >  view_wview[0]/2 and x >  view_wview[0]/2){
    if (point_direction(xstart, ystart, x, y) == 0 or xstart == x or ystart == y and (abs(ystart - y) < 64 or abs(xstart - x) < 64 )){
        Player.cont_attack ++;
        if (Player.cont_attack >= 1){
            if (Player.cont_attack == 2){
                //show_debug_message("atacar");
                Player.key_attack = 1;
            }
        }
    }
}*/

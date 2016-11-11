/// Play_Track(nature, time_retard);
var nature = argument[0];

//show_debug_message("sound!");
//show_debug_message(nature);


// Play sound.
switch(nature){
    case "attack":
        audio_play_sound(choose(sn_punch_1, sn_punch_2, sn_punch_3, sn_punch_4), 1, 0);
    break;
    case "air_attack":
        audio_play_sound(sn_air_punch, 1, 0);
    break;
    case "collapse_building":
        audio_play_sound(sn_edificio_collapse, 1, true);
    break;
    case "tank_bullet":
        audio_play_sound(sn_bullets_tank, 1, 0);
    break;
    case "hys_bullet":
        audio_play_sound(sn_bullets_hys, 1, 0);
    break;
    case "trans":
        audio_play_sound(sn_trans, 1, 0);
    break;
    case "press_start":
        audio_play_sound(sn_press_start, 1, 0);
    break;
}

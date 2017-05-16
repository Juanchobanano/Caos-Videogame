if(!game_pause){
 //   with o_player can_move = false;
    audio_play_sound(sn_tutorial, 1, 0);
    show_debug_message("pausa num_level: " + string(num_level));
    audio_sound_gain(Get_Soundtrack(num_level), 0, 3000);
   // audio_stop_sound(sn_soundtrack_pausa);
   // audio_play_sound(sn_soundtrack_pausa, 1, 1);
    audio_sound_gain(sn_soundtrack_pausa, 0, 1);
    audio_sound_gain(sn_soundtrack_pausa, 1, 8000);
    
    
    if(audio_is_playing(sn_helicopter_behind)) audio_sound_gain(sn_helicopter_behind, 0, 0);
    if(audio_is_playing(sn_helicopter_front)) audio_sound_gain(sn_helicopter_front, 0, 0);
    
    game_pause = true;
  /*  visible = 0;
    screen_save(working_directory + "pausa.png");
    background = sprite_add(
        working_directory + "pausa.png", 
        0, 
        0,
        0, 
        0,
        0
    );
    visible = 1;*/
    
    instance_create(0,0, obj_controller_gaussian_blur);
    
    with Key_Father visible = 0;

  //  instance_create(0,0,Dibujar_Pausa);
  //  with Help visible = 0;
  //  with o_player image_speed = 0;

}

mouse_clear(mb_left);

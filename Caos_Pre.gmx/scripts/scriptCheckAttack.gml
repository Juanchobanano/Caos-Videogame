  /// scriptCheckAttack(xx, yy);
xx = argument[0];
yy = argument[1];
enemy = argument[2];

//instance_create(xx, yy, Bola);

// Determinar escala del jugador.
if(instance_exists(enemy)){
    if(enemy.x < Player.x) escala = 1;
    else escala = -1;
}
      

// Atacar climb.
if(climb){
    //show_debug_message("Here!");
    Attack_Climb_Android(xx, yy, enemy);
 //   show_debug_message("bug climb");
    
// No climb.
}else{

    // Atacar en el piso.
    if(grounded or climbed_building){
        Attack_Ground_Android(enemy, yy);
   //     show_debug_message("bug piso");
        
    // Atacar saltando.
    }else{
      //  show_debug_message("bug saltar");
        if(!take_women){
            Attack_Jump_Android(enemy, yy);
        }
    }
}


/// scriptCheckAttack(xx, yy);
xx = argument[0];
yy = argument[1];

var radio_player = 100;

// Player exists.
if(instance_exists(Player)){

    // El dedo colisiona con un enemigo.
    var collide = collision_circle(xx, yy, 15, Enemy, 1, 1) and mouse_check_button_pressed(mb_left);
    if(!collide){ exit; }
    
    if(instance_exists(Enemy)){ var enemy = instance_nearest(x, y, Enemy); }
    else{ exit; }   
    
    // Determinar escala del jugador.
    if(instance_exists(enemy)){
        if(enemy.x < Player.x) escala = 1;
        else escala = -1;
    }
    
    // El jugador esta lo suficientemente cerca.
    var near_enough = point_in_circle(xx, yy, Player.x, Player.y, radio_player);
    if(!near_enough){ /*show_debug_message("out of range")*/ exit; }
    
    
    if(collide and near_enough){
    
        // Atacar climbed.
        if(climb){
            Attack_Climb_Android(xx, yy);
            
        }else{
        
            // Atacar en el piso.
            if(grounded or climbed_building){
                Attack_Ground_Android(enemy, yy);
                
            // Atacar saltando.
            }else{
                if(!take_women){
                    Attack_Jump_Android(xx, yy);
                }
            }
        }
        
    }     
}

/// Check_Enemy_Climb();
var radio_player = 150;
if(!instance_exists(Enemy)) exit;
var enemy = instance_nearest(x, y, Enemy);
//with(enemy){ image_blend = c_blue; }
var near_enough = point_in_circle(enemy.x, enemy.y, Player.x, Player.y, radio_player);

if(position_meeting(enemy.x, enemy.y, Persona) or position_meeting(enemy.x, enemy.y, Letrero_Normal)){
    near_enough = false;
}

if(collision_circle(enemy.x, enemy.y, 20, Persona, 1, 1) or collision_circle(enemy.x, enemy.y, 20, Letrero_Normal, 1, 1)){
    near_enough = false;
} 

// Atacar Enemigo.
if(near_enough){ 
    //with enemy image_blend = c_red;
    //Create_Debug(enemy.x, enemy.y);
    //show_debug_message("Atacar enemigo.");
    scriptCheckAttack(enemy.x, enemy.y, enemy);

    
// Atacar de frente.
}else{

    var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_attack");
    Current_Sprite(asset, 0, 3, retard_value);
    if (y != y_anterior){
        Recieve_Damage("front", climbed_building);
        y_anterior = y;
        same_place_counter = 0;
    }else{
        if(same_place_counter <2){
            Recieve_Damage("front", climbed_building);
            same_place_counter++;
        }
    }
    
}

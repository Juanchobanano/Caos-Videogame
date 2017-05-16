/// Hurt_Player(enemy, bullet_x, bullet_y);

// Hurt the player.


/*with(Player){ 
    vida -= damage;
}*/
if(room == game_tutorial and Player.vida == 1) exit;
if(room == game10 and Player.vida <= 10 and chances == 0) exit;
switch(argument[0]){
    case "Soldier_Bullet":
         with(Player){
             vida -= 0.5;
         }
    break;
    case "Tank_Bullet":
         with(Player){
             vida -= 2;
         }
    break;
    case "Helicopter_Bullet":
         with(Player){
             vida -= 1;
         }
    break;
}


// Set hurt true.
with(Player){
    hurt = true;
    count_hurt = 0;
}


// Create hurt points.
//instance_create(argument[1], argument[2], Hurt);


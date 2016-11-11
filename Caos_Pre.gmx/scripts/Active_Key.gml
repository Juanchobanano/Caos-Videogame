/// Active_Key
var dir = argument[0]; // String.
switch(dir){
    case "up":
        with Player key_up = 1;
        with Player key_left = 0;
        with Player key_right = 0;
        with Player key_down = 0;
    break;
    case "left":
        with Player key_left = 1;
    //    with Player key_up = 0;
        with Player key_right = 0;
     //   with Player key_down = 0;
    break;
    case "right":
        with Player key_right = 1;
        with Player key_left = 0;
      //  with Player key_up = 0;
      //  with Player key_down = 0;
    break;
    case "down":
        with Player key_down = 1;
        with Player key_left = 0;
        with Player key_right = 0;
        with Player key_up = 0;
    break;
}

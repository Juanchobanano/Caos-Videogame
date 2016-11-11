/// Background(level);
var level = argument[0];
// Medellin
if(level == 0 or level == 6){
    return background_medellin;
// Bogota
}else if(level == 1 or level == 2 or level == 4 or level == 5 or level == 7 or level == 9){
    return background_bogota;
// Cartagena
}else if(level == 3){
    return background_cartagena;
// Cali
}else if(level == 8){
    return background_cali;
}else if(level == 10){
    return background_bogota;
}

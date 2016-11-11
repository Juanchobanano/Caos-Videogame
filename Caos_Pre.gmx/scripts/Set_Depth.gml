/// Set_Depth(sprite_build)
var sprite_build = argument[0];

// Depth de los edificios.
switch(sprite_build){
    // Casa.
    case 1:
        return 1;
    break;
    // Palacio de Justicia.
    case 2:
        return 2;
    break;
    // Edificio mediano 1.
    case 3:
        return 3;
    break;
    // Edificio mediano 2.
    case 4:
        return 4;
    break;
    // Edificio alto.
    case 5:
        return 5;
    break;
}

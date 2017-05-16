#define Cambiar_Dato
/// Cambiar_Dato(variable_nombre [string], variable)
var control = keyboard_check(vk_control);
var click = (mouse_check_button(mb_left) and (position_meeting(x, y, self)));

if(control and click){
    var nombre = get_string("Escriba el nombre de la variable que desea cambiar", "");
    var valor = get_integer("Escriba el valor deseado", "");
    if(nombre == argument[0]){
        show_debug_message("Objeto: " + object_get_name(object_index));
        show_debug_message("Variable modificada: " + nombre);
        show_debug_message("Nuevo valor: " + string(valor));
        return valor;
    }
    exit;     
}
return argument[1];

/*
    Información y Guía:
    
    ¿Para qué sirvo?
    Permite cambiar y modificar el valor de las variables locales de un objeto en particular.
    Esta funcionalidad permite que las variables se puedan cambiar mientras el juego se está
    ejecutando.
    
    ¿Cómo me usas?
    En el evento Step del objeto en donde se quiera aplicar esta funcionalidad, es escribe:
    <variable susceptible a cambio> = Cambiar_Dato("palabra_clave", <variable susceptible a cambio>);
    
    Ejemplo:
    hspeed = Cambiar_Dato("hsp", hspeed);
    
    Notas:
    * La función despliega dos ventanas de diálogo.
    1. La primera pregunta qué variable se quiere modificar, aquí es necesario escribir la palabra clave.
    2. En la segunda ventana sólo es necesario digitar el nuevo valor.
    
    ¿Dudas?
    --> Juan@

*/


#define Ubicar_Sprite
var control = keyboard_check(vk_control);
var key_u = keyboard_check(ord("U"));

if(control and key_u){
     var sprite = get_string("Digite el nombre dele sprite (No añada 'spr_')", ""); 
     sprite_debug = asset_get_index("spr_" + sprite);
     if(sprite != -1){
        var ubicar = instance_create(room_width/2, room_height/2, Ubicar_Objeto);
        with(ubicar){ sprite_index = sprite_debug; }
     }else{
        show_debug_message("Sprite no encontrado");
     }
}


#define mouse_dobleclick_init
/// Inicializar mouse_dobleclick.
clicks = 0;
t_maximo = 0;


#define mouse_dobleclick_check
var boton = argument[0];
var tiempo = argument[1];

if(clicks >= 2){
    clicks = 0;
    t_maximo = 0;
    return true;
}else{
    if(mouse_check_button_pressed(mb_left)){
        clicks++;
    }
    
    if(clicks == 1){
        t_maximo++;
        if(t_maximo >= tiempo){
            t_maximo = 0;
            clicks = 0;
        }else{
            exit;
        }
    }
}    


/*
if(clicks > 0){
    
}


#define Pausa_Debug
var control = keyboard_check(vk_control);
var key_p = keyboard_check(ord("P"));

if(control and key_p){

    if(background_debug == -1){
        show_debug_message("----- PAUSE DEBUG ACTIVADO -----");
        screen_save(working_directory + "background_debug.png");
        instance_deactivate_all(true); // Debug sigue activo.
        if(instance_exists(Ubicar_Objeto)) instance_activate_object(Ubicar_Objeto);
        background_debug = sprite_add(
            working_directory + "background_debug.png", 
            0, 
            0,
            0, 
            0,
            0
        );
    }else{
        show_debug_message("----- PAUSE DEBUG DESACTIVADO -----");
        background_debug = -1;
        instance_activate_all();
        file_delete(working_directory + "background_debug.png");
    }
    
    keyboard_clear(vk_control);
    keyboard_clear(ord("P"));
}


#define Set_Focus
/// Set_Focus();
if(mouse_check_button_pressed(mb_left)){
    focus_debug = id;
    image_blend = c_blue;
}

#define Seleccionar_Nivel
var control = keyboard_check(vk_control);
var key_n = keyboard_check(ord("N"));

if(control and key_n){
    var nivel = get_string("Digite el nombre del nivel (no añada r_", "");
    nivel = asset_get_index(nivel);
    if(nivel != -1) room_goto(nivel); 
    else show_debug_message("Nombre de nivel no encontrado. Intente de nuevo.");
}
#define Mouse_Position
var control = keyboard_check(vk_control);
var key_c = keyboard_check(ord("c"));

//if(control and key_c and mouse_check_button(mb_left)){
    show_debug_message("Mouse x: " + string(mouse_x));
    show_debug_message("Mouse y: " + string(mouse_y));
//}
#define FileExists
/// FileExists("file_name");
var control = keyboard_check(vk_control);
var key_f = keyboard_check(ord("F"));

if(control and key_f){
    var file_name = get_string("Digite el nombre del archivo: ","") + ".sav";
    if(file_exists(working_directory + file_name)){
        show_debug_message("El archivo " + file_name + " existe!");
    }else{
        show_debug_message("El archivo " + file_name + " no existe!");
    }
}


#define Variable_State
var variable = get_string("Digite nombre de variable:","");
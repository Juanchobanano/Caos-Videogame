/// TextBox_Dialogs(room, visit, character, index);
var room_ = argument[0];

/*
    0: Daniel.
    1: Carlos.
    2: Julián
    3: Mamá.
*/
//show_debug_message(string(room_));

// Llenar listas.
switch(room_){
    case game_intro:    
        // Fill texto.
        can_skip = false;

       // Dialogo entre niños.
        if(idioma == "es"){
        
            // 0: Carlos, 1: Daniel, 2: Julián 3: Mamá
        
            // Charla en casa.
            ds_list_add(texto, "Carlos: ¡Daniel! ¡Daniel!"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Carlos: ¿¡Que más!? ¿En qué anda?"); ds_list_add(caras, 0); // 1 
            ds_list_add(texto, "Daniel: ¡Quiubo! Estaba viendo una película de#ninjas!"); ds_list_add(caras, 1); // 2
            ds_list_add(texto, "Carlos: ¡Camine a jugar maquinitas!"); ds_list_add(caras, 0); // 3
            ds_list_add(texto, "Daniel: ¡Hágale, de una, me contaron#que hay un nuevo juego!"); ds_list_add(caras, 1); // 4
         
            // Comienzan a caminar lo niños.
               
            ds_list_add(texto, "Mamá: ¿¡Y ustedes a dónde creen que van#jovencitos!?"); ds_list_add(caras, 3); // 5
            ds_list_add(texto, "Daniel: Ehh... ¡Hola mamá!"); ds_list_add(caras, 1); // 6            
            ds_list_add(texto, "Daniel: ...Vamos al centro comercial..."); ds_list_add(caras, 1); // 7                       
            ds_list_add(texto, "Mamá: ¿¡Y quién les dio permiso!?"); ds_list_add(caras, 3); // 8
            ds_list_add(texto, "Daniel: ¡Ay..., porfavor mami!"); ds_list_add(caras, 1); // 9
            
            // Pasa otro helicoptero.
            
            ds_list_add(texto, "Mamá: ¡No se me van a ir hasta allá solos!"); ds_list_add(caras, 3); // 10
            ds_list_add(texto, "Mamá: ¡Van con Julián y no se me demoren porque#la cosa no está para andar callejeando!"); ds_list_add(caras, 3); // 11
            
            // Sale Julián y continúan el camino.
         
            ds_list_add(texto, "Daniel: ¡Vea que dizque hay un juego donde uno#puede escoger y pelear con varios manes de#diferentes artes marciales!"); ds_list_add(caras, 1); // 12 
            ds_list_add(texto, "Daniel: ¡Uno es un ninja, otro es un karateka, otro hace kung fu!, ¿me entiende?"); ds_list_add(caras, 1); // 13
            ds_list_add(texto, "Carlos: ¡Uff suena tremendo!"); ds_list_add(caras, 0); // 14

            
            
           // ds_list_add(texto, "Daniel: ¡Vea que dizque en el juego uno puede#escoger y jugar con dos monstruos gigantes#que destruyen ciudades!"); ds_list_add(caras, 1); // 12 
           // ds_list_add(texto, "Carlos: ¡Uff que chevere, tenemos que jugarlo!"); ds_list_add(caras, 0); // 13
            
            
            // Interrumpen personas corriendo
            ds_list_add(texto, "Julián: Esperen..., ¿Por qué todo el mundo está#corriendo?"); ds_list_add(caras, 2); // 15
            

            // Explosiones.
            ds_list_add(texto, "Daniel: ¿¡Qué esta pasando!?"); ds_list_add(caras, 1); // 16
            
            // Soldados y tanques.
            ds_list_add(texto, "Carlos: ¡No sé, pero tenemos que irnos ya!"); ds_list_add(caras, 0); // 17
 
            
            // Aparece caos en pantalla y pablo saltando.
            ds_list_add(texto, "Julián: ¡Vamonos, encondámonos donde podamos!"); ds_list_add(caras, 2); // 18
            

            
        }else if(idioma == "en"){
        
            // Charla en casa.
            ds_list_add(texto, "Carlos: ¡Daniel! ¡Daniel!"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Carlos: ¿What's up? ¿How you doing?"); ds_list_add(caras, 0); // 1 
            ds_list_add(texto, "Daniel: ¡Hey! I was watching a ninja's movie!"); ds_list_add(caras, 1); // 2
            ds_list_add(texto, "Carlos: ¡Let's go the video arcade!"); ds_list_add(caras, 0); // 3
            ds_list_add(texto, "Daniel: ¡Off course, let's go, que me contaron que hay un nuevo juego!"); ds_list_add(caras, 1); // 4
         
            // Comienzan a caminar lo niños.
               
            ds_list_add(texto, "Mamá: ¿¡Y ustedes a dónde creen que van jovencitos!?"); ds_list_add(caras, 2); // 5
            ds_list_add(texto, "Daniel: Ehh... ¡Hola mamá!"); ds_list_add(caras, 1); // 6            
            ds_list_add(texto, "Daniel: ...Vamos al centro comercial"); ds_list_add(caras, 1); // 7                       
            ds_list_add(texto, "Mamá: ¿¡Y quién les dio permiso!?"); ds_list_add(caras, 2); // 8
            ds_list_add(texto, "Daniel: ¡Ay..., porfavor mami!"); ds_list_add(caras, 1); // 9
            
            // Pasa otro helicoptero.
            
            ds_list_add(texto, "Mamá: ¡No se me van a ir hasta allá solos!"); ds_list_add(caras, 3); // 10
            ds_list_add(texto, "Mamá: ¡Van con Julián y no se me demoren porque#la cosa no está para andar callejeando!"); ds_list_add(caras, 3); // 11
            
            // Sale Julián y continúan el camino.
         
            ds_list_add(texto, "Daniel: ¡Vea que dizque en el juego uno puede#escoger y jugar con dos monstruos#gigantes que destruyen ciudades!"); ds_list_add(caras, 1); // 12
            ds_list_add(texto, "Carlos: ¡Uff que chevere, tenemos que jugarlo entonces!"); ds_list_add(caras, 0); // 13
            
            
            // Interrumpen personas corriendo
            ds_list_add(texto, "Julián: Esperen..., ¿Por qué todo el mundo está corriendo?"); ds_list_add(caras, 2); // 14
            

            // Explosiones.
            ds_list_add(texto, "Daniel: ¿¡Qué esta pasando!?"); ds_list_add(caras, 1); // 15
            
            // Soldados y tanques.
            ds_list_add(texto, "Carlos: ¡No sé, pero tenemos que irnos ya!"); ds_list_add(caras, 0); // 16
 
            
            // Aparece caos en pantalla y pablo saltando.
            ds_list_add(texto, "Julián: ¡Vamonos, encondámonos donde podamos!"); ds_list_add(caras, 2); // 17
            
        }
               
    break;
    case game10:
        if(idioma == "es"){
            ds_list_add(texto, "Carlos: ¡Nos encontró!"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Daniel: ¡No tenemos otra opción, debemos#derrotarlo!"); ds_list_add(caras, 1); // 1 
            ds_list_add(texto, "Julián: ¡Ataquémoslo!"); ds_list_add(caras, 2); // 2
            ds_list_add(texto, "Julián: ¡Toma esto!"); ds_list_add(caras, 2);
            ds_list_add(texto, "Daniel: ¡Y esto!"); ds_list_add(caras, 1);
            ds_list_add(texto, "Carlos: ¡Acabemos con él!"); ds_list_add(caras, 0);
            ds_list_add(texto, "El Jefe: ¡Noooo! ¡Mi imperio!"); ds_list_add(caras, 4); 
        }else if(idioma == "en"){
        
        }
    break;
    default:
        ds_list_add(texto, "Julián: ¡Corran! ¡Corran!"); ds_list_add(caras, 2);
    break;
}


/*

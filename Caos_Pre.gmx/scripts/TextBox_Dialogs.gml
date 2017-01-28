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
            ds_list_add(texto, "Carlos: ¡Camine a jugar maquinitas!"); ds_list_add(caras, 0); // 1
            ds_list_add(texto, "Daniel: ¡Hágale, de una, me contaron#que hay un nuevo juego!"); ds_list_add(caras, 1); // 2
         
            // Comienzan a caminar lo niños.
               
            ds_list_add(texto, "Mamá: ¿¡Y ustedes a dónde creen que#van jovencitos!?"); ds_list_add(caras, 3); // 3
            ds_list_add(texto, "Daniel: ¡Ay..., porfavor mami!"); ds_list_add(caras, 1); // 4
            
            // Pasa otro helicoptero.
            
            ds_list_add(texto, "Mamá: ¡No se me van a ir hasta allá#solos!"); ds_list_add(caras, 3); // 5
            ds_list_add(texto, "Mamá: ¡Van con Julián y no se me#demoren porque la cosa no está#para andar callejeando!"); ds_list_add(caras, 3); // 6
            
            // Sale Julián y continúan el camino.
                               //                               //                               //                               //
            ds_list_add(texto, "Daniel: ¡Dizque hay un juego con#diferentes artes marciales, tiene#Ninjas, Karatekas, un man de#Kung Fu, ¿me entiende?"); ds_list_add(caras, 1); // 7
            ds_list_add(texto, "Carlos: ¡Uff suena tremendo!"); ds_list_add(caras, 0); // 8
            
            // Interrumpen personas corriendo
            ds_list_add(texto, "Julián: Esperen..., ¿Por qué todo el#mundo está corriendo?"); ds_list_add(caras, 2); // 9
            

            // Explosiones.
            ds_list_add(texto, "Daniel: ¿¡Qué esta pasando!?"); ds_list_add(caras, 1); // 10
            
            // Soldados y tanques.
            ds_list_add(texto, "Carlos: ¡No sé, pero tenemos que#irnos ya!"); ds_list_add(caras, 0); // 11
 
            
            // Aparece caos en pantalla y pablo saltando.
            ds_list_add(texto, "Julián: ¡Vamonos, encondámonos donde#podamos!"); ds_list_add(caras, 2); // 12
            

            
        }else if(idioma == "en"){
        
            // 0: Carlos, 1: Daniel, 2: Julián 3: Mamá
        
            // Charla en casa.
                               //                               //                               //                               //
            ds_list_add(texto, "Carlos: Daniel! Daniel!"); ds_list_add(caras, 0); // 0
            ds_list_add(texto, "Carlos: Come to the arcade games#with me!"); ds_list_add(caras, 0); // 1
            ds_list_add(texto, "Daniel: Let's go! I hear they got#a new game."); ds_list_add(caras, 1); // 2
         
            // Comienzan a caminar lo niños.
               
            ds_list_add(texto, "Mamá: Where do you young men think#you're going!?"); ds_list_add(caras, 3); // 3
            ds_list_add(texto, "Daniel: Oh, come on, mom!"); ds_list_add(caras, 1); // 4
            
            // Pasa otro helicoptero.
            
            ds_list_add(texto, "Mamá: I can't let you go on your#own!"); ds_list_add(caras, 3); // 6
            ds_list_add(texto, "Mamá: Ask Julian to come with you#then, and don't you come back#late, the streets aren't exactly#safe right now."); ds_list_add(caras, 3); // 7
            
            // Sale Julián y continúan el camino.
                               //                               //                               //                               //
            ds_list_add(texto, "Daniel: The say the new game's got#ninjas, and all kinds of martial#arts movements!"); ds_list_add(caras, 1); // 8
            ds_list_add(texto, "Carlos: God, that sounds so cool!"); ds_list_add(caras, 0); // 9
            
            // Interrumpen personas corriendo
            ds_list_add(texto, "Julián: Hold on..., why is every-#one running?"); ds_list_add(caras, 2); // 10
            

            // Explosiones.
            ds_list_add(texto, "Daniel: What in the world is#happening?"); ds_list_add(caras, 1); // 11
            
            // Soldados y tanques.
            ds_list_add(texto, "Carlos: I don't know, but we're#leaving now!"); ds_list_add(caras, 0); // 12
 
            
            // Aparece caos en pantalla y pablo saltando.
            ds_list_add(texto, "Julián: Let's find a safe place#to hide!"); ds_list_add(caras, 2); // 13
            
        }
               
    break;
    case game10:
        if(idioma == "es"){
            ds_list_add(texto, "Carlos: ¡Nos encontró!"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Daniel: ¡No tenemos otra opción,#debemos derrotarlo!"); ds_list_add(caras, 1); // 1 
            ds_list_add(texto, "Julián: ¡Ataquémoslo!"); ds_list_add(caras, 2); // 2
            ds_list_add(texto, "Julián: ¡Toma esto!"); ds_list_add(caras, 2);
            ds_list_add(texto, "Daniel: ¡Y esto!"); ds_list_add(caras, 1);
            ds_list_add(texto, "Carlos: ¡Acabemos con él!"); ds_list_add(caras, 0);
            ds_list_add(texto, "El Jefe: ¡Noooo! ¡Mi imperio!"); ds_list_add(caras, 4); 
         }else if(idioma == "en"){
            ds_list_add(texto, "Carlos: He found us! What now?"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Daniel: We got no choice but#defeating him!"); ds_list_add(caras, 1); // 1 
            ds_list_add(texto, "Julián: Come on, we can do this!"); ds_list_add(caras, 2); // 2
            ds_list_add(texto, "Julián: Take that!"); ds_list_add(caras, 2);
            ds_list_add(texto, "Daniel: And this too!"); ds_list_add(caras, 1);
            ds_list_add(texto, "Carlos: Let's finish him up!"); ds_list_add(caras, 0);
            ds_list_add(texto, "El Jefe: Noooo! My empire!"); ds_list_add(caras, 4);  
        }
    break;
    default:
        if(idioma == "es"){
            ds_list_add(texto, "Julián: ¡Corran! ¡Corran!"); ds_list_add(caras, 2);
        }else if(idioma == "en"){
            ds_list_add(texto, "Julián: Run! Run!"); ds_list_add(caras, 2);
        }
        
    break;
}


/*

with(eat_person_id){       
   audio_play_sound(sn_eat_power, 1, 0);                   
   switch(image_index){
       case 0: // Billetes.
       
           if(!poderes_activados) poder_ate = "billetes";
           else if(poderes_activados) c_billetes++;
           
           Get_Score(x,y, 200,false);
       break;
       case 1: // Bomba.
           Get_Score(x,y, 200,false);
           if(poderes_activados) c_bombas++;
       break;
       case 2: // Bolsa billetes.
           Get_Score(x,y, 200,false);
           if(poderes_activados) c_bolsa++;
       break;
       case 3: // Jeringa.
           Get_Score(x,y, 200,false);
           if(poderes_activados) c_jeringa++;
       break;
       case 4: // Carro.
           Get_Score(x,y, 200,false);
       //    show_debug_message("comer carro");
       break
       case 5: // Cigarro.
           Get_Score(x,y, 200,false);
       break;
   }                           
}   

// with(Player){vida +=1;}
// Get_Score(x,y+10,10,true);





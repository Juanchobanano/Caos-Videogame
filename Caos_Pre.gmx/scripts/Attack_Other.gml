/// Attack_Other(image_xscale)
if(os_type == os_windows){
    Destroy_Enemy();
}

switch(image_xscale){

    // Right.
    case -1:
        var other_building = instance_nearest(bbox_left + 8, y - 9, Edificio);
        if(position_meeting(bbox_left + 8, y - 9, other_building)){
            Recieve_Damage("other", other_building);
        }else{
            Play_Track("air_attack");
        }
    break;
    
    // Left.
    case 1:
        var other_building = instance_nearest(bbox_right - 8, y - 9, Edificio);
        if(position_meeting(bbox_right - 8, y - 9, other_building)){
            Recieve_Damage("other", other_building);
        }else{
            Play_Track("air_attack");
        }
    break;
}

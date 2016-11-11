/// Generate_Tress();
/*
// Local variables.
var offset = 0;
var xx = offset;
var spr_width = sprite_get_width(spr_tree);

// Create trees.
while(xx < room_width - offset - spr_width){
    var tree = instance_create(xx, 400, Tree);
    with(tree) image_index = irandom_range(0, available_trees);
    xx += spr_width;
}

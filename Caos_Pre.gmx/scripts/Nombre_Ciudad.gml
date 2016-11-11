var level = argument[0];

var b = "BOGOTA DC";
var m = "MEDELLIN";
var c = "CARTAGENA";
var cali = "CALI";

if(level == 1 or level == 7){
    return m;
}else if(level == 2 or level == 3 or level == 5 or level == 6 or level == 8 or level == 10){
    return b;
}else if(level == 4){
    return c;
}else if(level == 9){
    return cali;
}
 

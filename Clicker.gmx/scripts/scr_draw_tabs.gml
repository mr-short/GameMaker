
var width = sprite_get_width(spr_tab);
var height = sprite_get_height(spr_tab);
var ox = room_width/2-width*3+width/2;
var oy = height/2;

var obj;

for(var i=0; i<6; i++) {
    obj = instance_create(ox+i*width,oy,obj_tab);
    obj.type = i;
}

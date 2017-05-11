
var width = sprite_get_width(spr_res);
var height = sprite_get_height(spr_res);
var ox = 0;
var oy = 0;
var sx = room_width/2-width*1.5;
var sy = sprite_get_height(spr_tab)+height;

var obj;

for(var i=0; i<global.process_total; i++) {
    obj = instance_create(sx+ox,sy+oy,obj_pro);
    obj.type = i;
    ox += width*1.5;
    if(i%3==2) {
        ox = 0;
        oy += height*1.5;
    }
}

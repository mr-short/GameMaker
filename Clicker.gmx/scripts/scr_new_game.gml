
// Room tabs
enum TAB { OVERVIEW,RESOURCE,PROCESS,MANUFACTURE,STORAGE,SELL }

global.tab[TAB.OVERVIEW] = rm_overview;
global.tab[TAB.RESOURCE] = rm_resource;
global.tab[TAB.PROCESS] = rm_process;
global.tab[TAB.MANUFACTURE] = rm_manufacture;
global.tab[TAB.STORAGE] = rm_storage;
global.tab[TAB.SELL] = rm_sell;

global.tab_lbl[TAB.OVERVIEW] = "OVERVIEW";
global.tab_lbl[TAB.RESOURCE] = "RESOURCE";
global.tab_lbl[TAB.PROCESS] = "PROCESS";
global.tab_lbl[TAB.MANUFACTURE] = "MANUFACTURE";
global.tab_lbl[TAB.STORAGE] = "STORAGE";
global.tab_lbl[TAB.SELL] = "SELL";

// Resources
enum RES { ROCK,OIL,TREE }

global.res_lbl[RES.ROCK] = "Rock";
global.res_lbl[RES.OIL] = "Oil";
global.res_lbl[RES.TREE] = "Tree";

// Materials
enum MAT { 
    METAL,STONE,SAND,PLASTIC,FIBER,RUBBER,PAINT,WOOD,COAL,  // Processing
    WIRE,CONCRETE,GLASS,MAGNET // Manufacturing
}
global.process_total = 9;
global.manufacture_t1_total = 4;

// Processing
global.mat_lbl[MAT.METAL] = "Metal";
global.mat_lbl[MAT.STONE] = "Stone";
global.mat_lbl[MAT.SAND] = "Sand";
global.mat_lbl[MAT.PLASTIC] = "Plastic";
global.mat_lbl[MAT.FIBER] = "Fiber";
global.mat_lbl[MAT.RUBBER] = "Rubber";
global.mat_lbl[MAT.PAINT] = "Paint";
global.mat_lbl[MAT.WOOD] = "Wood";
global.mat_lbl[MAT.COAL] = "Coal";

global.mat_req_type[MAT.METAL,0] = RES.ROCK;
global.mat_req_type[MAT.STONE,0] = RES.ROCK;
global.mat_req_type[MAT.SAND,0] = RES.ROCK;
global.mat_req_type[MAT.PLASTIC,0] = RES.OIL;
global.mat_req_type[MAT.FIBER,0] = RES.OIL;
global.mat_req_type[MAT.RUBBER,0] = RES.TREE;
global.mat_req_type[MAT.PAINT,0] = RES.OIL;
global.mat_req_type[MAT.PAINT,1] = RES.TREE;
global.mat_req_type[MAT.WOOD,0] = RES.TREE;
global.mat_req_type[MAT.COAL,0] = RES.TREE;

global.mat_req_need[MAT.METAL,0] = 2;
global.mat_req_need[MAT.STONE,0] = 1;
global.mat_req_need[MAT.SAND,0] = 1;
global.mat_req_need[MAT.PLASTIC,0] = 2;
global.mat_req_need[MAT.FIBER,0] = 2;
global.mat_req_need[MAT.RUBBER,0] = 2;
global.mat_req_need[MAT.PAINT,0] = 1;
global.mat_req_need[MAT.PAINT,1] = 1;
global.mat_req_need[MAT.WOOD,0] = 1;
global.mat_req_need[MAT.COAL,0] = 2;

// Manufacturing Tier 1
global.mat_lbl[MAT.WIRE] = "Wire";
global.mat_lbl[MAT.CONCRETE] = "Concrete";
global.mat_lbl[MAT.GLASS] = "Glass";
global.mat_lbl[MAT.MAGNET] = "Magnet";

global.mat_req_type[MAT.WIRE,0] = MAT.METAL;
global.mat_req_type[MAT.WIRE,1] = MAT.PLASTIC;
global.mat_req_type[MAT.CONCRETE,0] = MAT.STONE;
global.mat_req_type[MAT.CONCRETE,1] = MAT.SAND;
global.mat_req_type[MAT.GLASS,0] = MAT.SAND;
global.mat_req_type[MAT.GLASS,1] = MAT.COAL;
global.mat_req_type[MAT.MAGNET,0] = MAT.METAL;

global.mat_req_need[MAT.WIRE,0] = 1;
global.mat_req_need[MAT.WIRE,1] = 1;
global.mat_req_need[MAT.CONCRETE,0] = 1;
global.mat_req_need[MAT.CONCRETE,1] = 1;
global.mat_req_need[MAT.GLASS,0] = 2;
global.mat_req_need[MAT.GLASS,1] = 1;
global.mat_req_need[MAT.MAGNET,0] = 2;

// Limits
global.resource_max = 10;
global.process_max = 10;
global.manufacture_max = 10;


// Init arrays
for (var i=array_length_1d(global.res_lbl)-1; i>=0; i--) {
    global.res[i] = 0;
}
for (var i=array_length_1d(global.mat_lbl)-1; i>=0; i--) {
    global.mat[i] = 0;
}
for (var t=array_length_1d(global.mat_lbl)-1; t>=0; t--) {
    for (var i=array_length_2d(global.mat_req_need,t)-1; i>=0; i--) {
        global.mat_req_cur[t,i] = 0;
    }
}



room_goto(rm_overview);


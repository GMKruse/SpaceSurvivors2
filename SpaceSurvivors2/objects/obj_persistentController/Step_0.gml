if(global.newController){
for(var i = 0; i < array_length(global.gamepads); i++ ){

var player = instance_create_depth(500 + i *60, 500, 0, obj_player)


with(player){

self.gp = global.gamepads[i]
self.image_xscale = 0.2
self.image_yscale = 0.2
}


}
global.newController = false


}



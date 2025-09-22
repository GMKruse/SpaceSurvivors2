global.newController = false

var alienSpawner1 = instance_create_depth(1750, 400, 0, obj_alianSpawner)
var alienSpawner2 = instance_create_depth(1750, 600, 0, obj_alianSpawner)
var gun1 = instance_create_depth(1400, 400, 0, obj_gun)
var gun2 = instance_create_depth(1400, 600, 0, obj_gun)

with(alienSpawner1){
self.xAlienSpawn = 1750
self.yAlienSpawn = 400
}

with(alienSpawner2){
self.xAlienSpawn = 1750
self.yAlienSpawn = 600
}

with(gun1){
self.xShotSpawn = 1400
self.yShotSpawn = 400
}

with(gun2){
self.xShotSpawn = 1400
self.yShotSpawn = 600
}

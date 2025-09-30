
yAlienSpawn = choose(350,570)

instance_create_depth(xAlienSpawn, yAlienSpawn, 0, obj_alien)


//spawn tilfældigt mellem 1 og 3s
alarm[0]=random_range(global.game_speed_fps, global.game_speed_fps*3)


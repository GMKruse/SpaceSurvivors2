xAlienSpawn = room_width
yAlienSpawn = random_range(-50,room_height+50)


cooldownLow = room_speed*3
cooldownHigh = room_speed*5

spawn=0

alarm[0]=random_range(cooldownLow, cooldownHigh)

alarm[1] = room_speed*5 // start spawning
alarm[2] = room_speed*120 // every 2 mins: Spawn faster enemies!

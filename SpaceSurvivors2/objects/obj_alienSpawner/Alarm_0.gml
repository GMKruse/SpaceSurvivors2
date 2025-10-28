
if(spawn==1)
{
	yAlienSpawn = random_range(-50,room_height+50)

	instance_create_depth(xAlienSpawn, yAlienSpawn, 0, obj_alien)
}

//spawn tilfældigt mellem 1 og 3s
alarm[0]=random_range(cooldownLow, cooldownHigh)


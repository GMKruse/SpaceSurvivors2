image_xscale = 0.1
image_yscale = 0.1

depth=-1000

alarm[0]=2

shoot_area = instance_create_depth(x-100,y,depth,obj_shootArea)


maxCooldown = room_speed*1.5
cooldown = maxCooldown;

maxEnergy = 50
energy = maxEnergy

//recharge 10 energy
alarm[0]=room_speed*10

image_xscale = 0.1
image_yscale = 0.1

depth=-1000

alarm[0]=2

shoot_area = instance_create_depth(x-100,y,depth,obj_shootArea)

cooldown = 0;

maxEnergy = 100
energy = maxEnergy

//recharge 20 energy
alarm[0]=room_speed*10

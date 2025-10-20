/// @description recharge 10

if(energy<maxEnergy){
	energy+=10
	
	if(energy>maxEnergy){energy=maxEnergy}
}

alarm[0]=room_speed*10
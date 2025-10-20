/// @description Insert description here
// You can write your code in this editor
cooldownLow /=2
cooldownHigh /=2


audio_play_sound(choose(s_faster,s_careful_faster),1,false)

if(cooldownLow<room_speed/10){cooldownLow=room_speed/10}
if(cooldownHigh<room_speed/7){cooldownHigh=room_speed/7}

alarm[2] = room_speed*120
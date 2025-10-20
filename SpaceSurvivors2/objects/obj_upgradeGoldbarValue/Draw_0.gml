/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center)

draw_set_color(c_white)
draw_set_font(font_12)

draw_text(x,y-30,"+1 GOLDBAR \nVALUE \n$" +string(price))

draw_set_halign(fa_left)



// === BAR ===
if(touching==1)
{
	// Bar settings
	var bar_width  = 150;   // full width of the bar
	var bar_height = 15;    // thickness
	var bar_yoff   = -80;  // how far above the gun

	// Calculate fill percentage
	var pct = tick / (room_speed * 3);

	if (pct < 0) pct = 0;
	if (pct > 1) pct = 1;

	// Coordinates
	var x1 = x - bar_width/2;
	var y1 = y + bar_yoff;
	var x2 = x + bar_width/2;
	var y2 = y1 + bar_height;

	// Draw background
	draw_set_alpha(.5)
	draw_set_color(c_orange);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1)

	// Draw fill
	draw_set_color(c_orange);
	draw_rectangle(x1, y1, x1 + (bar_width * pct), y2, false);

	// Reset color
	draw_set_color(c_white);
}

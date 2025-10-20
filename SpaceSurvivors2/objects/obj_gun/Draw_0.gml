/// @description Insert description here
// You can write your code in this editor
// Draw the gun’s normal sprite first
draw_self();

// === ENERGY BAR ===

// Bar settings
var bar_width  = maxEnergy;   // full width of the bar
var bar_height = 10;    // thickness
var bar_yoff   = -60;  // how far above the gun

// Calculate fill percentage
var pct = energy / maxEnergy;
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

grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 1;
state = states.walk;
stunned = 0;
alarm[0] = 150;
roaming = 1;
collectdrop = 5;
flying = 0;
straightthrow = 0;
cigar = 0;
cigarcreate = 0;
stomped = 0;
shot = 0;
thrown = 0;
reset = 0;
bombreset = 0;
hp = 1;
grounded = 1;
idlespr = spr_pepgoblin;
stunfallspr = spr_pepgoblinstun;
walkspr = spr_pepgoblin;
stunspr = spr_pepgoblinstun;
grabbedspr = spr_pepgoblinstun;
scaredspr = spr_pepgoblin_scared;
image_xscale = -1;
flash = 0;
slapped = 0;
birdcreated = 0;
boundbox = 0;
spr_dead = spr_pepgoblin_dead;
important = 0;
heavy = 1;
depth = 0;
paletteselect = string_letters(room_get_name(room)) == "chateau" ? 1 : 0;
spr_palette = palette_pepgoblin;

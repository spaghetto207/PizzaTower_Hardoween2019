grav = 0;
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
hp = 1;
hitboxcreate = 0;
grounded = 0;
idlespr = spr_ancho;
stunfallspr = spr_anchobounce;
walkspr = spr_ancho;
grabbedspr = spr_anchobounce;
scaredspr = spr_ancho_scared;
image_xscale = -1;
flash = 0;
slapped = 0;
birdcreated = 0;
boundbox = 0;
spr_dead = spr_anchodead;
important = 0;
heavy = 0;
depth = 0;

/*
	the anchovy will not be grabbed by the player
	i dont know how to fix this as ive tried debugging
	and cant figure out where it even happens,
	the player's state just resets for some reason.
	this happens ONLY on the anchovy, and it pisses me off
	
	so im going to try to brute force fix it for now
*/
ancho_grabbed = false;
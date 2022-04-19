/// @desc Core player logic
// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,no_walk_here)) && (key_jump)
{
	vsp = -jumpsp
}	

// Horizontal collision
if (place_meeting(x+hsp,y,no_walk_here))
{
	while (!place_meeting(x+sign(hsp),y,no_walk_here))
	{
		x = x + sign(hsp)
	}
	hsp = 0;
}	
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,no_walk_here))
{
	while (!place_meeting(x,y+sign(vsp),no_walk_here))
	{
		y = y + sign(vsp)
	}
	vsp = 0;
}	
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,no_walk_here))
{
	sprite_index = (BetaJump);
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1.5;
if (hsp == 0)
{
	sprite_index = BetaIdle;
    }	
    else
    {
	    sprite_index = (BetaWalk);
		image_speed = 1;
    }
}

if (hsp != 0) image_xscale = sign(hsp)

//Invincibility Frames
if (invincible == true){
	
	invincible_timer--
	
	if (invincible_timer <= 0){   invincible = false; invincible_timer = 30;   }
	
}

//Healing
if (Medkits > 0) {
	if keyboard_check(vk_shift){
   while (OBJ_Beta.hp < OBJ_Beta.hpmax) OBJ_Beta.hp = OBJ_Beta.hp + 01;
   OBJ_Beta.Medkits = OBJ_Beta.Medkits - 1;
	}
}
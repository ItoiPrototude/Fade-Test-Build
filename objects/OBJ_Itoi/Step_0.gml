/// @desc Core player logic
// Get player inputs
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//Movement
hsp = lengthdir_x(inputMagnitude * walksp, inputDirection);
vsp = lengthdir_y(inputMagnitude * walksp, inputDirection);
x += hsp;
y += vsp;

//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0

//Update Image Index
PlayerAnimateSprite();


//Invincibility Frames
if (invincible == true){
	
	invincible_timer--
	
	if (invincible_timer <= 0){   invincible = false; invincible_timer = 30;   }
	
}

// Quit Game
if (keyboard_check(vk_escape)) game_end();

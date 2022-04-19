/// @description Common Variables
image_speed = 0;
hsp = 0;
vsp = 0;
walksp = 3;

//Stats
damage = 5;
hp = 100;
stamina = 89;
crit_chance = 0.1;
crit_damage = 8;
hpmax = 5;

SwordSwings = 3
//Invincibility Frames
invincible = false;
invincible_timer = 30;

//Medkit Inventory
Medkits = 0;
MedkitsMax = 3;

//HUD Coordinates
healthbar_x = 2;
healthbar_y = 5;
Medinventory_x = 2;
Medinventory_y = 29;
SwordStat_x = 2
SwordStat_y = 38
//Shader Setup
handler = shader_get_uniform(Bloom,"intensity");


value = 0.24;

//Sprite Handler
spriteRun = ItoiWalk;
spriteIdle = ItoiIdle;
localFrame = 0;
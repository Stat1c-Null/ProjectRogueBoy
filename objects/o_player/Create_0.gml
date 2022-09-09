/// @description

//Movement
moveSpeed = 6;
jumpSpeed = 15;
gravSpeed = 1;
  
//Vars
hsp = 0;
vsp = 0;
zsp = 0;

//Z Jumps
z = 20;
floorZ = 0;
jumps = 1
jumps_max = 3
jump_current = jumps_max

height = 16;

//Dash
isDashing = false
dashDuration = 0
dashSpeed = moveSpeed * 2
room_speed = 60//FPS
//Animation
anim_timer = 0
anim_timer_limit = 50//Time between reset back to idle

//Stats
global.maxhealth = 100
global.health = 50
global.maxenergy = 100
global.energy = 70
energy_restore = 25

//Stats 
name = "Dexter"
image_speed = 0
//Gun Stats
gun_equpied = "handgun"
handgun_ammo = 10
handgun_max_clip_cap = 10
handgun_current_ammo = 30
handgun_max_ammo = 50

rifle_ammo = 0
smg_ammo = 0
shotgun_ammo = 0

grenades = 0
molotovs = 0

firingdelay = 0//Delay between each shot
delay_set = 5
recoil = 0
recoil_set = 4




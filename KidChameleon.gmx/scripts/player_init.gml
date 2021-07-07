/// initial variables for player

// Global
global.pause = false;

// Local Variables

hp = 100;
state = "stand" // Player starts in stand position
grav = 0.35; // Gravity
//grav_dir = 270; // Down
room_speed = 60; // FPS
image_speed = 1; // Animation Speed
frozen = false; // Frozen player
isDead = false; // Is not dead yet
isDamaged = false // Immunity
shoot = false; // Is not Shooting

// Directionals Variables
yAxis = 0;
xAxis = 0;
speedNormal = 2.1;
speedRunning = 3;
fric = 0.2;


// Timers Variables
damage_timer = 0; // Immunity timer
slide_timer = 0; // Is not jumping


instance_create(x,y,healthBar);
instance_create(x,y,objCamera);

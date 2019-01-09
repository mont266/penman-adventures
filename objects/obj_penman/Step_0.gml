/// @description Movement and Collision
// You can write your code in this editor
// right
	
rightPressed = -keyboard_check(ord("A"))
leftPressed = keyboard_check(ord("D"));
downPressed = keyboard_check(ord("S"));
upPressed = -keyboard_check(ord("W"));

moveX = rightPressed + leftPressed;
moveY = downPressed + upPressed;

xVelocity = moveX * terminalVelocity;
yVelocity = moveY * terminalVelocity;

//horizontal collision
if (place_meeting(x+xVelocity, y, obj_basicWall)) {
	
	while (!place_meeting(x+sign(xVelocity),y,obj_basicWall)) {
		x += sign(xVelocity);
	}
	xVelocity = 0;
}
//vertical collision
if (place_meeting(x, y+yVelocity, obj_basicWall)) {
	
	while (!place_meeting(x,y+sign(yVelocity),obj_basicWall)) {
		y += sign(yVelocity);
	}
	yVelocity = 0;
}

x += xVelocity;
y += yVelocity;

//Shooting mechanics
if (firerateCD < 1) {
	firerateCD = 7;
	switch (keyboard_key) {	
		case vk_right: scr_fireProjectile("right", xVelocity, yVelocity, x, y); break;
		case vk_left: scr_fireProjectile("left", xVelocity, yVelocity, x, y); break;
		case vk_down: scr_fireProjectile("down", xVelocity, yVelocity, x, y); break;
		case vk_up: scr_fireProjectile("up", xVelocity, yVelocity, x, y); break;
	}
}
firerateCD -= 1;

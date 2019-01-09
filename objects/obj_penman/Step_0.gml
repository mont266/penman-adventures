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

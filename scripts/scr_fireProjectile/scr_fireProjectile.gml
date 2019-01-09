///fireProjectile{argument0 = string, argument1 = int, arguement2 int, arguement3 int, arguement4 int}
projectileDirection = argument0;
obj_xVelocity = argument1;
obj_yVelocity = argument2;
obj_xPos = argument3;
obj_yPos = argument4;
randY = random_range(-2.5,2.5);
randX = random_range(-2.5,2.5);
bulletDirection = instance_create_layer(obj_xPos + randX, obj_yPos + randY, "Instances", obj_Projectile);
switch (projectileDirection) {
		case "left":  
			bulletDirection.xVelocity -= 25; 
			bulletDirection.yVelocity += obj_yVelocity;
			bulletDirection.image_angle = 90;
			break;
		case "right":
			bulletDirection.xVelocity += 25;
			bulletDirection.yVelocity += obj_yVelocity;
			bulletDirection.image_angle = 270;
			break;
		case "up":
			bulletDirection.yVelocity -= 25;
			bulletDirection.xVelocity += obj_xVelocity;
			bulletDirection.image_angle = 0;
			break;
		case "down":
			bulletDirection.yVelocity += 25;
			bulletDirection.xVelocity += obj_xVelocity;
			bulletDirection.image_angle = 180;
			break;
}

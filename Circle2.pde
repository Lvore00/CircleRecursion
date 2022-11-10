/**
Name: Lillian Vore
Class: Intermediate Prog.
Date: 11/10/2022
Instructions:
You will re-write the program to generate the outputs as the images below – 
Submit two programs with captured image outputs
submit the file (file name must be Circle2.pde  and Circle3.pde  and two image files)   
File 1: Circle2.pde
File 2: Circle3.pde
File 3: Circle2 output image
File 4: Circle3 output image
*/



void setup() {
size(800, 800);
noStroke();
noLoop();
}
void draw() {
drawCircle(width/2, 280, 6);
}
void drawCircle(int x, int radius, int level) {
float tt = 126 * level/4.0;
fill(tt);
/**
https://processing.org/reference/ellipse_.html
a float: x-coordinate of the ellipse
b float: y-coordinate of the ellipse
c float: width of the ellipse by default
d float: height of the ellipse by default
**/
ellipse(width/2, x, radius*2, radius*2);
if(level > 1) {
level = level - 1;
drawCircle(x - radius/2, radius/2, level);  //left circle
drawCircle(x + radius/2, radius/2, level);  //right circle
}
}

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


void setup(){
size(800, 800);
noStroke();
noLoop();
}

void draw(){
drawCircle(width/2, 280, 6, 6, 0);
}

void drawCircle(int x, int radius, int level, int init_lv, int dir){
float tt = 126 * level/4.0;
fill(tt);
//ellipse(width/2, x, radius*2, radius*2);
if(level == init_lv){
ellipse(width/2, x, radius, radius);
level = level - 1;
drawCircle(x - radius/2, radius / 2, level, init_lv, 0);
drawCircle(x + radius/2, radius / 2, level, init_lv, 0);
drawCircle(x - radius/2, radius / 2, level, init_lv, 1);
drawCircle(x + radius/2, radius / 2, level, init_lv, 1);
}
else if(level > 1 && dir == 0){
level = level - 1;
ellipse(x, height/2, radius, radius);
drawCircle(x - radius/2, radius/2, level, init_lv, 0);
drawCircle(x + radius/2, radius/2, level, init_lv, 0);
}
else if(level > 1 && dir == 1){
level = level - 1;
ellipse(width/2, x, radius, radius);
drawCircle(x - radius/2, radius/2, level, init_lv, 1);
drawCircle(x + radius/2, radius/2, level, init_lv, 1);
}
}

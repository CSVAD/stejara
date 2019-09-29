/* Stejara Dinulescu
 * Due October 3, 2019
 * Computational Systems of Visual Art and Design: Project 1
 * Draw a face using primitive function calls!
*/

//setting up the canvas
background(255);
size(600, 600);

//universal calls
noStroke();
rectMode(CENTER);

//face code
fill(0, 0, 255, 50); //set face color to blue
rect(width/2, height/2, 400, 500); //draw face ellipse

//ear code
fill(255, 0, 0, 50); //set ear color to blue
ellipse(width/2 + 200, height/2, 50, 100); //draw right ear
ellipse(width/2 - 200, height/2, 50, 100); //draw left ear

//nose code
fill(0, 255, 0, 100);
rect(width/2, height/2, 50, 100); //bridge of nose
fill(255, 0, 0, 100);
triangle(width/2, height/2, width/2 + 50, height/2 + 50, width/2 - 50, height/2 + 50); //bottom of nose

//eye code
fill(255); //whites of eyes
rect(width/2 + 100, height/2 - 100, 100, 60); //right eye
rect(width/2 - 100, height/2 - 100, 100, 60); //left eye
fill(255, 255, 0, 100); //pupils
ellipse(width/2 + 100, height/2 - 100, 100, 40); //right pupil
ellipse(width/2 - 100, height/2 - 100, 100, 40); //left pupil

//mouth code
fill(255, 0, 0, 50);
arc(width/2, height/2 + 80, 200, 200, 0, PI);

// Robot function courtesy of J David Eisenberg
void drawRobot()
{
  // Don't draw an outline around any rectangles
  noStroke();
  fill(38, 38, 200);
  rect(20, 0, 38, 30); // head
  rect(14, 32, 50, 50); // body

  rect(0, 32, 12, 37); // left arm
  rect(66, 32, 12, 37); // right arm

  rect(22, 84, 16, 50); // left leg
  rect(40, 84, 16, 50); // right leg

  fill(222, 222, 249);
  ellipse(30, 12, 12, 12); // left eye
  ellipse(47, 12, 12, 12); // right eye
}

void drawRobot2()
{
  // Don't draw an outline around any rectangles
  noStroke();
  fill(255,200,0);
  rect(20, 0, 38, 30); // head
  rect(14, 32, 50, 50); // body

  rect(0, 32, 12, 37); // left arm
  rect(66, 32, 12, 37); // right arm

  rect(22, 84, 16, 50); // left leg
  rect(40, 84, 16, 50); // right leg

  fill(222, 222, 249);
  ellipse(30, 12, 12, 12); // left eye
  ellipse(47, 12, 12, 12); // right eye
}


void setup()
{
  // Create a 600 x 600 window
  size(600, 600);
  // Clear the background to pure white
  background(255, 255, 255);
  
  // Draw a robot using the default coordinate system, where the origin is at the top-left corner of the screen  
  drawRobot();
  
  // Save the coordinate system
  pushMatrix();
  
  // Move the coordinate system: the origin will now be at (300, 500)
  translate(300, 500);
  
  // Rotate the coordinate system by 90 degrees
  rotate(radians(90));
  
  // Draw a second robot
  drawRobot();
  
  // Undo the translation and rotation and go back to the original coordinate system
  popMatrix();
  randomSeed(0);
  for(int i=0;i<20;i++){
    pushMatrix();
    rotate(random(-1.6,1.6));
  scale(random(1,3));
  translate(random(0,500),random(0,500));
  drawRobot();
  popMatrix();
  }
  
  frameRate(120);

    
    
  
 /* for(int i = 0;i<10;i ++){
    for(int j=0;j<10;j++){
      translate(80,0);
      drawRobot();
    }
    translate(-800,80);
          drawRobot();
  }
   */ 

    
}

float frames = 0;


void draw(){
  //rotate(random(0,6.28));
  //scale(random(1,3));
  //translate(random(0,500),random(0,500));
  //frames++;
  //if(frames%2==0){
  //  drawRobot2();
  //}
  //else{
  //drawRobot();
  //}
  if(frames%20==0){
   randomSeed(0); 
  }
    rotate(random(-1.6,1.6));
  scale(random(1,3));
  translate(random(0,500),random(0,500));
  fill(cos(frames)*75+200, 100,100);
  ellipse(30, 12, 12, 12); // left eye
  ellipse(47, 12, 12, 12); // right eye
  frames++;
  
}

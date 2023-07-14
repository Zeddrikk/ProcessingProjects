/*
void setup(){
 size(600,600,P3D);
 noStroke();
}
void draw(){
  background(0,0,0);
  lights();
  camera(0,0,(height/2)/tan(PI/6),0,0,0,0,-1,0);
  sphere(100);
  beginShape(TRIANGLES);
  vertex(1000,-100,1000);
  vertex(1000,-100,-1000);
  vertex(-1000,-100,1000);
  
  vertex(-1000,-100,-1000);
  vertex(-1000,-100,1000);
  vertex(1000,-100,-1000);
  endShape();
  
}
*/
//lab code

//void setup()
//{
//  // Create a 3D window
//  size(600, 600, P3D);  
//  // Don't show wireframes
//  noStroke();

//}
//float frames=0;
//void draw()
//{
//  frames++;
//  // Clear the screen
//  background(0, 0, 0);
//  // Turn on some basic 3D lights
//  lights();
//  // Create a camera that looks at (0, 0, 0) from a point on the positive z axis
//  camera(0, 0, (height/2) / tan(PI/6), 0, 0, 0, 0, -1, 0);
  
//  fill(255, 255, 255);
  
//  // Draw a two-triangle floor
//  beginShape(TRIANGLES);
//  vertex(-1000, -100, -1000);
//  vertex(-1000, -100, 1000);
//  vertex(1000, -100, -1000);
  
//  vertex(1000, -100, -1000);
//  vertex(-1000, -100, 1000);
//  vertex(1000, -100, 1000);
//  endShape();

//  // Draw a sphere
//  sphere(10);  
  
//  //draw THE SUN
//  pushMatrix();
//  translate(0,100,-1500);
//  fill(255,255,0);
//  sphere(300);
//  fill(255,0,0);
//  popMatrix();
  //pushMatrix();
  //rotateY(radians(frames));
  ////pyramid
  
  //beginShape(TRIANGLES);
  //vertex(0,0,0);
  //vertex(90,-100,110);
  //vertex(110,-100,-90);
  
  //vertex(0,0,0);
  //vertex(90,-100,110);
  //vertex(-110,-100,90);
  
  //vertex(0,0,0);
  //vertex(-110,-100,90);
  //vertex(-90,-100,-110);
  
  //vertex(0,0,0);
  //vertex(-90,-100,-110);
  //vertex(110,-100,-90);
  //endShape();
  //popMatrix();
  
  
  //cylinder attempt
  //pushMatrix();
  //rotateY(radians(frames));
  //float z = 5 / tan(radians(3));
  //for(int i =0;i<60;i++){
  //  pushMatrix();
  //  rotateX(radians(15));
  //  translate(0,50,50);
  //  rotateY(i *radians(6));
  //  sphere(10);
  //  beginShape(TRIANGLES);
  //  vertex(5,-10,z);
  //  vertex(5,-100,z);
  //  vertex(-5,-10,z);
    
  //  vertex(-5,-10,z);
  //  vertex(5,-100,z);
  //  vertex(-5,-100,z);
    
  //  vertex(0,-10,0);
  //  vertex(5,-10,z);
  //  vertex(-5,-10,z);
    
  //  vertex(0,-100,0);
  //  vertex(5,-100,z);
  //  vertex(-5,-100,z);
    
  //  endShape();
  //  popMatrix();
  //}
  //popMatrix();
  
  
  
  //torus?
  //just cylinder x2 no?
  
 // pushMatrix();
 //rotateX(radians(frames));
 // float z2 = 3 / tan(radians(3));
 // for(int i =0;i<360;i++){
 //   pushMatrix();
 //   rotateZ(i*radians(1));
 //   sphere(10);
 //   translate(5/tan(radians(.5))-3 / tan(radians(3)),0,0);
    
 //   for(int j =0;j<60;j++){
 //   pushMatrix();
 //   translate(0,0,50);
 //   rotateY(j *radians(6));
 //   beginShape(TRIANGLES);
 //   vertex(3,5,z2);
 //   vertex(3,-5,z2);
 //   vertex(-3,5,z2);
    
 //   vertex(-3,5,z2);
 //   vertex(3,-5,z2);
 //   vertex(-3,-5,z2);
    
 //   //vertex(0,5,0);
 //   //vertex(5,5,z2);
 //   //vertex(-5,5,z2);
    
 //   //vertex(0,-5,0);
 //   //vertex(5,-5,z2);
 //   //vertex(-5,-5,z2);
    
 //   endShape();
 //   popMatrix();
 // }
 // popMatrix();
 // }
  
 // popMatrix();
  
  
  
  
  
  
  
  
  
  
  
  
  //cow 
  
  // 3D meshes are stored in special PShape variables
PShape bevo;

void setup()
{
  // Create a 3D window
  size(600, 600, P3D);
  // Load Bevo from file. Will not work unless the Bevo mesh is in the same folder as this script!
  bevo = loadShape("bevo.obj");
  // Meshes need a special command to set their fill color
  bevo.setFill(color(191, 87, 0));
}

void draw()
{
  // Clear the screen
  background(0, 0, 0);
  // Set up some basic lights
  lights();
  // Don't show wireframes
  noStroke();
  // Orbital camera that I wrote for you. Complicated!
  camera(-(height/2) / tan(PI/6) * sin(4.0 * PI * mouseX/width), (mouseY - height/2), (height/2) / tan(PI/6) * cos(4.0 * PI * mouseX/width), 0, 0, 0, 0, -1, 0);
  // Draw a basic floor
  fill(255, 255, 255);
  beginShape(TRIANGLES);
  vertex(-1000, -100, -1000);
  vertex(-1000, -100, 1000);
  vertex(1000, -100, -1000);
  
  vertex(1000, -100, -1000);
  vertex(-1000, -100, 1000);
  vertex(1000, -100, 1000);
  endShape();
 
  // Draw Bevo. He's currently tiny!
  scale(10);
  shape(bevo);  
  
}

  
  
  
  
//}

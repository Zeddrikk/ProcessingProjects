PShape sun;
PShape earth;
PShape moon;
PShape mars;
PShape saturn;
PImage sunTexture;
PImage earthTexture;
PImage moonTexture;
PImage marsTexture;
PImage saturnTexture;
void setup()
{
  size(600, 600, P3D);
  // no wireframe
  noStroke();
  
  
  
  
  
  // create a UV-mapped sphere of radius 50
  sun = createShape(SPHERE, 100);
  // and give it a texture
  sunTexture = loadImage("sun.jpg");
  sun.setTexture(sunTexture);  
  
  earth = createShape(SPHERE,20);
  earthTexture = loadImage("earth.jpg");
  earth.setTexture(earthTexture);
  
  moon = createShape(SPHERE,5);
  moonTexture = loadImage("moon.jpg");
  moon.setTexture(moonTexture);
  
  mars = createShape(SPHERE, 18);
  marsTexture  = loadImage("mars.jpg");
  mars.setTexture(marsTexture);
  
  saturn = createShape(SPHERE, 30);
  saturnTexture = loadImage("saturn.jpg");
  saturn.setTexture(saturnTexture);
  frameRate(120);
}

// new functionality to make the mouse wheel zoom in/out
float cameraDist = 400;

void mouseWheel(MouseEvent event)
{
  float e = event.getCount();
  cameraDist = max(100, cameraDist + 20*e);
}
float frames = 0;

void draw()
{  
  background(0, 0, 0);
  
  
  //beginShape(TRIANGLES);
  //vertex(1000,0,1000);
  //vertex(1000,0,-1000);
  //vertex(-1000,0,1000);
  
  //vertex(-1000,0,1000);
  //vertex(1000,0,-1000);
  //vertex(-1000,0,-1000);
  
  //endShape();
  // camera controls
  float altitude = PI*(mouseY - height/2.0) / height;
  camera(-cameraDist * sin(4.0 * PI * mouseX/width) * cos(altitude), cameraDist * sin(altitude), cameraDist * cos(4.0 * PI * mouseX/width) * cos(altitude), 0, 0, 0, 0, -1, 0);
  
  // draw the sun
  noLights();
  pushMatrix();
  rotateY(radians(frames/24));

  shape(sun);  
  popMatrix();
  pointLight(255, 255, 255,0,0,0);
  ambientLight(100,100,100,0,0,0);
  
  //earth
  pushMatrix();
  rotateY(-radians(frames));
  translate(0,0,300);
  rotateY(-radians(-frames));
  //moon
  pushMatrix();
  rotateZ(radians(40));
  rotateY(-radians(frames * 5));
  translate(0,0,70);
  rotateY(-radians(-frames * 5));
  rotateY(radians(frames * 5));
  shape(moon);
  popMatrix();
  rotateX(radians(20));
  rotateY(radians(frames));
  shape(earth);
 popMatrix();
  //mars
  pushMatrix();
  rotateY(-radians(frames/2));
  translate(0,0,600);
  rotateY(-radians(-frames/2));
  shape(mars);
  popMatrix();
  //saturn

  noLights();
  //stars
  randomSeed(0);
  for(int i=0;i<70;i++){
    pushMatrix();
    translate(random(-3500,-2000),random(-2000,2000),random(-3500,2300));
  sphere(5);
  popMatrix();
  pushMatrix();
    translate(random(2000,3500),random(-2000,2000),random(-3500,3500));
  sphere(5);
  popMatrix();
  pushMatrix();
    translate(random(-2000,2000),random(-2000,2000),random(-3500,-2000));
  sphere(5);
  popMatrix();
  pushMatrix();
    translate(random(-2000,2000),random(-2000,2000),random(2000,3500));
  sphere(5);
  popMatrix();
  pushMatrix();
  translate(random(-2000,2000),random(1000,2000),random(-2000,2000));
  sphere(5);
  popMatrix();
  pushMatrix();
  translate(random(-2000,2000),random(-2000,-1000),random(-2000,2000));
  sphere(5);
  popMatrix();
  }
  
  
  
  
  
  //asteroid belt
  pushMatrix();
  rotateY(-radians(frames/10));
  for(int i=0; i<360; i++){
    pushMatrix();
    rotateY(radians(i));
    translate(0,0,450);
    translate(0,random(-50,50),random(-50,50));
    sphere(2);
    popMatrix();
  }
  popMatrix();
  
  //comet
  //god damn it its trig isnt it
  
  pushMatrix();
  //rotateZ(radians(30));
  rotateY(-radians(frames));
  translate(0,0,cos(radians(frames*2)) * 150 + 800);
  rotate(-radians(frames));
  sphere(10);
  popMatrix();
  
  //trail?
  //maybe in curved path behind comet put some things
  randomSeed((long)frames);
  fill(150,150,150);
  for(int i=0;i<20;i++){
   pushMatrix();
   rotateY(-radians(frames-i));
   translate(0,0,cos(radians((frames-i)*2)) * 150 + 800);
   rotateY(-radians(frames-i));
   pushMatrix();
   translate(0,random(-7,7),random(-7,7));
   sphere(5-i/4);
   popMatrix();
   pushMatrix();
   translate(0,random(-7,7),random(-7,7));
   sphere(5-i/4);
   popMatrix();
   translate(0,random(-7,7),random(-7,7));
   sphere(5-i/4);
   popMatrix();
  }
  fill(207,185,151);
  
  
  
  //maybe two cylinders
  //saturn with rings >:D
  //previous cylinder code
   //cylinder attempt
   //saturb
     pushMatrix();
    rotateY(-radians(frames/5));
  translate(0,0,1200);
  rotateY(-radians(-frames/5));
 shape(saturn);
   
  pushMatrix();

  float z = 11.87 / tan(radians(9));
  for(int i =0;i<20;i++){
    pushMatrix();
    rotateX(radians(15));
    rotateY(i *radians(18));
    beginShape(TRIANGLES);
    vertex(11.87,1,z);
    vertex(11.87,-1,z);
    vertex(-11.87,1,z);
    
    vertex(-11.87,1,z);
    vertex(11.87,-1,z);
    vertex(-11.87,-1,z);
    
    vertex(11.87,1,z-28);
    vertex(11.87,1,z);
    vertex(-11.87,1,z);
    
    vertex(-11.87,1,z);
    vertex(11.87,1,z-28);
    vertex(-11.87,1,z-28);
    
    vertex(11.87,-1,z-28);
    vertex(11.87,-1,z);
    vertex(-11.87,-1,z);
    
    vertex(-11.87,1,z);
    vertex(11.87,1,z-28);
    vertex(-11.87,1,z-28);
    
    vertex(11.87,1,z-28);
    vertex(11.87,-1,z-28);
    vertex(-11.87,1,z-28);
    
    vertex(-11.87,1,z-28);
    vertex(11.87,-1,z-28);
    vertex(-11.87,-1,z-28);
    
    endShape();
    popMatrix();
  }
  popMatrix();
  popMatrix();
  
  fill(255,255,255);
  
  
  
  
  
  frames ++;
}

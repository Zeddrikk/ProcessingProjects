// Variables for the fixed (red) points
float x0 = 300;
float y0 = 100;


FloatList pointX = new FloatList();
FloatList pointY = new FloatList();
FloatList vy = new FloatList();
FloatList vx = new FloatList();
FloatList restlengths = new FloatList();

// Variables for the moving (black) points
float x1 = 500;
float y1 = 100;
float vx1 = 0;
float vy1 = 0;
float m1 = 1.0;

float x2 = 500;
float y2=200;
float vx2 = 0;
float vy2 = 0;
float m2 = 1.0;


int points = 3;

// Variables for the spring
float restlength;
float restlength2;
float springk = 20000;

// The overall time step size. Shrink if your simulation becomes unstable (can happen if masses or springk is too high).
float dt = 1.0/240.0;

void setup()
{
  size(600, 600);
  //first three points, velocity, restlength initialize
  pointX.append(300);
  pointY.append(100);
  pointX.append(500);
  pointY.append(100);
  pointX.append(500);
  pointY.append(200);
  for(int i=0;i<2;i++){
   vy.append(0);
   vx.append(0);
  }
  for(int i=1;i<3;i++){
    restlengths.append(sqrt(sq(pointX.get(i)-pointX.get(i-1))+sq(pointY.get(i)-pointY.get(i-1))));
  }
  
  
  restlength = sqrt(sq(x0-x1)+sq(y0-y1));  
  restlength2 = sqrt(sq(x1-x2) + sq(y1-y2));
  frameRate(240);
}

void simulatePhysicsStep()
{
  // Update positions
  for(int i=1;i<points-1;i++){
    pointX.set(i,pointX.get(i) + dt * vx.get(i));
    pointY.set(i,pointY.get(i) + dt* vy.get(i));
  }
  
  //forces calc
  for(int i =1; i<points-1; i++){
    float dist = sqrt(sq(pointX.get(i-1)-pointX.get(i))+ sq(pointY.get(i-1)-pointY.get(i)));

    float fy1 = 980*m1
                + (pointY.get(i-1)-pointY.get(i)) * springk*(dist-restlengths.get(i-1))/dist 
                - (pointY.get(i)-pointY.get(i+1)) * springk*(dist-restlengths.get(i))/dist;
    float fx1 = (pointX.get(i-1)-pointX.get(i)) * springk*(dist-restlengths.get(i-1))/dist
                - (pointX.get(i)-pointX.get(i+1)) * springk*(dist-restlengths.get(i))/dist;
     //change velocity           
    vx.set(i-1, dt/m1*fx1);
    vy.set(i-1,dt/m1*fy1);
  }
  //last point calc with only one force
  float fy1 = 980*m1;
  float dist = sqrt(sq(pointX.get(points-2)-pointX.get(points-1))+ sq(pointY.get(points-1)-pointY.get(points-2)));
  
  float fx1=(pointX.get(points-2)-pointX.get(points-1)) * springk*(dist-restlengths.get(points-2))/dist;
  vx.set(points-1, dt / m1 * fx1);
  System.out.println(fx1);
  vy.set(points-1, dt/m1*fy1);
 System.out.println(fy1);
  
  
  
  
  
  //x1 += dt * vx1;
  //y1 += dt * vy1;
  //x2+= dt*vx2;
  //y2+=dt*vy2;
 
  //float fy2 = 980*m2;
  //float fy1=980*m1;
  //float dist = sqrt(sq(x1-x0) + sq(y0-y1));
  //float dist2 = sqrt(sq(x1-x2) + sq(y2-y1));
  //float fx2=(x1-x2) * springk*(dist2-restlength2)/dist2;
  //float fx1=(x0-x1)*springk*(dist-restlength)/dist;
  // fy1+=(y0-y1) * springk*(dist-restlength) / dist;
  //fy1-=(y1-y2) * springk*(dist2-restlength2)/dist2;
  //fx1-=(x1-x2) * springk*(dist2-restlength2)/dist2;
  //fy2 +=(y1-y2) * springk*(dist2-restlength2)/dist2;
  
  
  //vy1 += dt / m1 * fy1;
  //vx1+=dt/m1*fx1;
  //vx2+=dt/m2*fx2;
  //vy2+=dt/m2 * fy2;
  









}

void draw()
{
  noStroke();
  fill(255, 255, 255, 80);
  rect(0, 0, 600, 600);
  
  simulatePhysicsStep(); 
  stroke(0,0,0);
  strokeWeight(10);
  for(int i = 0;i<points;i++){
    point(pointX.get(i),pointY.get(i));
  }
   strokeWeight(4);
  stroke(250, 50, 150);
  for(int i=0;i<points-1;i++){
   line(pointX.get(i),pointY.get(i),pointX.get(i+1),pointY.get(i+1)); 
  }
  //stroke(255, 0,0);
  //strokeWeight(10);
  //point(x0, y0);  
  
  //stroke(0, 0, 0);
  //point(x1, y1);
  
  //stroke(0,0,0);
  //point(x2,y2);
  
  //strokeWeight(4);
  //stroke(250, 50, 150);
  //line(x0, y0, x1, y1);
  //line(x1,y1,x2,y2);
  
  if(keyPressed)
  {
    save("pendulum.png");
  }
}


void mouseClicked(){
  points++;
  // add new restlength
  
}

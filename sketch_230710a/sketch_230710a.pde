//pokeball
/*
size(600,600);
background(137,207,240);
strokeWeight(5);
stroke(0,0,0);
fill(255,0,0);
circle(300,300,200);
fill(255,255,255);
stroke(255,255,255);
rect(200,300,200,150);
stroke(0,0,0);
line(200,300,400,300);
circle(300,300,20);
fill(0,0,0,0);
circle(300,300,200);
stroke(137,207,240);
strokeWeight(100);
circle(300,300,305);
*/

//robot
/*
size(600,600);
background(255,255,255);

*/

//random
/*
size(600,600);
background(255,255,255);
strokeWeight(4);

for(int i=0;i<4;i++){
  stroke(random(0,255),random(0,255),random(0,255));
  point(random(0,599),random(0,599));
}
*/

//starry night

void setup(){
  size(600,600);
  background(0,0,0);
  frameRate(20);
}
float frame = 0;
float px1 = random(-50,-5);
float py1 = random(50,70);
float px1Inc = random(0,3);
float py1Inc = random(0,3);
float px2 = random(0,50);
float py2 = random(-100,0);
float px2Inc = random(0,3);
float py2Inc = random(1,3);
float px3 = random(-150,-5);
float py3 = random(600,650);
float px3Inc = random(0,3);
float py3Inc = random(-3,-1);
float px4 = random(600,650);
float py4 = random(200,400);
float px4Inc = random(-3,-1);
float py4Inc = random(-3,3);
long seed1= (long)random(0,100);
long seed2 = (long)random(0,100);

void draw(){
  //stroke(random(0,255),random(0,255),random(0,255));
  
  if(frame%10==0){
    randomSeed(seed1);
  }
  if(frame%20==0){
    randomSeed(seed2);
  }
  stroke(255,255,255);
  for(int i=0;i<5;i++){
    strokeWeight(cos(frame)*3+6);
    point(random(0,599),random(0,599));
  }
  
  strokeWeight(3);
  if(px1>750||px1<-150){
    px1Inc = -px1Inc;
  }
  if(py1 > 750 || py1<-150){
    py1Inc = -py1Inc;
  }
  
  if(px2>750||px2<-150){
    px2Inc = -px2Inc;
  }
  if(py2 > 750 || py2<-150){
    py2Inc = -py2Inc;
  }
  if(px3>750||px3<-150){
    px3Inc = -px3Inc;
  }
  if(py3 > 750 || py3<-150){
    py3Inc = -py3Inc;
  }
  if(px4>750||px4<-150){
    px4Inc = -px4Inc;
  }
  if(py4 > 750 || py4<-150){
    py4Inc = -py4Inc;
  }
  
  line(px1,py1,px1+px1Inc,py1+py1Inc);
  px1=px1+px1Inc;
  py1=py1+py1Inc;
  line(px2,py2,px2+px2Inc,py2+py2Inc);
  px2=px2+px2Inc;
  py2=py2+py2Inc;
  line(px3,py3,px3+px3Inc,py3+py3Inc);
  px3=px3+px3Inc;
  py3=py3+py3Inc;
  line(px4,py4,px4+px4Inc,py4+py4Inc);
  px4=px4+px4Inc;
  py4=py4+py4Inc;
  stroke(0,0,0,10);
  fill(0,0,0,10);
  rect(0,0,600,600);
  
  
  
  
  
  frame++;
}


//mousex mousey
/*
void setup(){
  size(600,600);
  background(255,255,255);
  stroke(0,0,0);
  strokeWeight(5);
  fill(255,255,255);
  frameRate(360);
}
void draw(){
   background(255,255,255);
   circle(mouseX,mouseY,100);
   
}

  */
  
  //ball
  /*
void setup(){
  size(600,600);
  background(255,255,255);
  stroke(0,0,0);
  strokeWeight(5);
  fill(255,255,255);
  
}
float bx = 300;
float by = 300;
float vx = 5;
float vy = 3;
void draw(){
  
  background(255,255,255);
  circle(bx,by,100);
  bx+=vx;
  by+=vy;
}
  
  
  */
  
  
  
  //dodgeball
  
//  void setup()
//{
//  // Create a 600 x 600 window
//  size(600, 600);
//  // Clear the screen to pure black
//  background(0, 0, 0);
//  frameRate(60);
 
//}

//// Position of the red ball
//float px =100;
//float py = 100;
//// Velocity of the red ball
//float vx = 5;
//float vy = 2;

//float bx = 100;
//float by = 100;
//float bvx = 3;
//float bvy = 7;
//void draw()
//{
//  // Clear the screen every frame
//  background(0, 0, 0);
  
//  // Draw the green ball at the user's mouse position
//  stroke(120, 120, 120);
//  fill(10, 200, 50);
//  circle(mouseX, mouseY, 25);
  
//  // Draw the red ball at position (px, py)
//  stroke(50, 0, 0);
//  fill(250, 0, 0);
//  circle(px, py, 50);
//  //rect
//   stroke(255,255,0);
//  fill(25,255,0);
//  rect(200,200,100,150);
//  //blue ball
//  stroke(0,0,50);
//  fill(0,0,250);
//  circle(bx,by,50);
//  // Compute the ball's next x position
//  float newpx = px + vx;
//  float newpy = py+vy;
//  // Update the ball's y position
//  float newbx = bx+bvx;
//  float newby = by + bvy;
  
//  // Check if the ball is about to leave the bounds
//  if(newpx < 25)
//  {
//    // It is leaving out the left side!
//    vx = -vx;
//  }
//  else if(newpx > 599-25)
//  {
//    // It is leaving out the right side!
//    vx = -vx;
//  }
//  else if((newpy>200&&newpy<350)&&(newpx>175&&newpx<190||newpx>310&&newpx<325)){
//    vx = -vx;
//  }
//  else if((abs(200-px)>abs(200-py))&&
//  (
//  sqrt((200-px)*(200-px)+(200-py)*(200-py))<=25 && sqrt((200-px)*(200-px)+(200-py)*(200-py))>18
//  ||
//  (abs(200-px)<abs(350-py))&&sqrt((200-px)*(200-px)+(350-py)*(350-py))<=25 &&sqrt((200-px)*(200-px)+(350-py)*(350-py))>18
//  ||
//  (abs(300-px)<abs(200-py))&&sqrt((300-px)*(300-px)+(200-py)*(200-py))<=25&&sqrt((300-px)*(300-px)+(200-py)*(200-py))>18
//  ||
//  (abs(300-px)<abs(350-py))&&sqrt((300-px)*(300-px)+(350-py)*(350-py))<=25&&sqrt((300-px)*(300-px)+(350-py)*(350-py))>18
//  )){
//  vx=-vx;
//  }
//  else
//  {
//    // The ball's new position is OK; so move the ball there
//    px = newpx;
//  }  
  
  
  
  
//  if(newpy < 25)
//  {
//    // It is leaving out the left side!
//    vy = -vy;
//  }
//  else if(newpy > 599-25)
//  {
//    // It is leaving out the right side!
//    vy = -vy;
//  }
//  else if((newpx>200&&newpx<300)&&(newpy>175&&newpy<190||newpy>360&newpy<375)){
//    vy = -vy;
//  }
//  //corner collision?
//  /*
//  ||
//  sqrt((200-px)*(200-px)+(350-py)*(350-py))<=12.5||
//  sqrt((300-px)*(300-px)+(200-py)*(200-py))<=12.5||
//  sqrt((300-px)*(300-px)+(350-py)*(350-py))<=12.5
//  */
  
//  else if((abs(200-px)<abs(200-py))&&
//  (
//  sqrt((200-px)*(200-px)+(200-py)*(200-py))<=25&&sqrt((200-px)*(200-px)+(200-py)*(200-py))>18
//  ||
//  (abs(200-px)<abs(350-py))&&sqrt((200-px)*(200-px)+(350-py)*(350-py))<=25&&sqrt((200-px)*(200-px)+(350-py)*(350-py))>18
//  ||
//  (abs(300-px)<abs(200-py))&&sqrt((300-px)*(300-px)+(200-py)*(200-py))<=25&&sqrt((300-px)*(300-px)+(200-py)*(200-py))>18
//  ||
//  (abs(300-px)<abs(350-py))&&sqrt((300-px)*(300-px)+(350-py)*(350-py))<=25&&sqrt((300-px)*(300-px)+(350-py)*(350-py))>18
//  )){
//  vy=-vy;
//  }
//  else
//  {
//    // The ball's new position is OK; so move the ball there
//    py = newpy;
//  }  
  
  
  
//  /*
  
//  //blue ball collision
//  if(newbx < 25)
//  {
//    // It is leaving out the left side!
//    bvx = -bvx;
//  }
//  else if(newbx > 599-25)
//  {
//    // It is leaving out the right side!
//    bvx = -bvx;
//  }
//  else
//  {
//    // The ball's new position is OK; so move the ball there
//    bx = newbx;
//  }  
//  if(newby < 25)
//  {
//    // It is leaving out the left side!
//    bvy = -bvy;
//  }
//  else if(newby > 599-25)
//  {
//    // It is leaving out the right side!
//    bvy = -bvy;
//  }
//  else
//  {
//    // The ball's new position is OK; so move the ball there
//    by = newby;
//  }  
  
  
  
  
  
  
  
  
//  /*
//  if(sqrt((px-mouseX)*(px-mouseX)+(py-mouseY)*(py-mouseY))<=36.5 ||
//  sqrt((bx-mouseX)*(bx-mouseX)+(by-mouseY)*(by-mouseY))<=36.5 ||
//  //left and right of rect
//  (mouseY<275&&mouseY>200)&&(mouseX>187.5&&mouseX<210||mouseX>290&&mouseX<312.5)||
//  //bottom and top
//  (mouseX>200&&mouseX<300)&&(mouseY>340&&mouseY<362.5||mouseY<210&&mouseY>187.5)||
//  //corners somehow?
//  sqrt((200-mouseX)*(200-mouseX)+(200-mouseY)*(200-mouseY))<=12.5||
//  sqrt((200-mouseX)*(200-mouseX)+(350-mouseY)*(350-mouseY))<=12.5||
//  sqrt((300-mouseX)*(300-mouseX)+(200-mouseY)*(200-mouseY))<=12.5||
//  sqrt((300-mouseX)*(300-mouseX)+(350-mouseY)*(350-mouseY))<=12.5
  
//  ){
//    exit();
//  }
//  */

//}






//triangles :D
/*
void setup() {
  // Create a 600 x 600 image
  size(600,600);
  // Clear the background to pure white
  background(255, 255, 255);
  // Draw using black
  stroke(0, 0, 0);  
  // Draw big points
  strokeWeight(3);stroke(255,0,0);
  point(corner1x, corner1y);
  stroke(0,255,0);
  point(corner2x, corner2y);
  stroke(0,0,255);
  point(corner3x, corner3y);
  // Animate at 10 frames per second (instead of 60) so we can more easily see the points appear
  frameRate(1000);
};

// The position of the first anchor point
float corner1x = 300;
float corner1y = 10;

// The position of the second anchor point
float corner2x = 590;
float corner2y = 590;

float corner3x = 10;
float corner3y = 590;

float corner4x = 120;
float corner4y = 200;

float corner5x = 120;
float corner5y = 400;

float corner6x = 480;
float corner6y = 400;


// The current position of the moving point
float posx = 300;
float posy = 300;


void draw() {  
  // Draw the three points
  // These first two won't move
  
  // This last one will change every frame
  for(int i=0; i<10; i++){
    
    
  stroke(255-sqrt((posx-corner1x)*(posx-corner1x) + (posy-corner1y)*(posy-corner1y))*.2,255-sqrt((posx-corner2x)*(posx-corner2x) + (posy-corner2y)*(posy-corner2y))*.2,255-sqrt((posx-corner3x)*(posx-corner3x) + (posy-corner3y)*(posy-corner3y))*.2);

  point(posx, posy);
  
  // Randomly decide which way to move
  float rand = random(0, 99);
  if(rand < 33)
  {
    // 50% chance of moving towards the first anchor point
    posx = 0.5 * (posx + corner1x);    
    posy = 0.5*(posy+corner1y);
  }
  else if(rand<66){
    posx=0.5 * (posx+corner3x);
    posy = 0.5  * (posy+corner3y);
  }
  //else if(rand<48){
  //  posx=0.5 * (posx+corner4x);
  //  posy = 0.5  * (posy+corner4y);
  //}
  //else if(rand<64){
  //  posx=0.5 * (posx+corner5x);
  //  posy = 0.5  * (posy+corner5y);
  //}
  //else if(rand<80){
  //  posx=0.5 * (posx+corner6x);
  //  posy = 0.5  * (posy+corner6y);
  //}
  else
  {
    // Otherwise, move towards the second anchor point
    posx = 0.5 * (posx + corner2x);    
    posy = 0.5*(posy+corner2y);
  }  
  }
};

*/

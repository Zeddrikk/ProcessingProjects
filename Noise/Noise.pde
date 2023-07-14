void setup()
{  
  size(600, 600);
  // Frequency of the Perlin noise. By carefully tuning this number you can change the noise profile substantially
  //mountain peaks
  float frequency2 = 0.007;
  float frequency1 = .007;
  
  // Loop over all pixels on the screen
  for(int i=0; i<600; i++)
  {
    for(int j=0; j<600; j++)   
    {
      // Perlin noise is always between 0 and 1
      //float n = noise(frequency1*i,frequency1*j) *3/8 
      float n = noise(frequency1 *i, frequency1*j);
      //+ noise(frequency3*i,frequency3*j) / 8 
      //+ noise(frequency4*i,frequency4*j) / 16;
      ;
      //float r= 0;
      //float g = 0;
      //float b = 255;
      
      //if(n<.3){
      // b = 255*n/.3;
      //}
      //if(n>.35){
      // b=-255*(n-.4)/.2+255;
      // g=255*(n-.4)/.2;
      //}
      //if(n>.5){
      // r=255*(n-.5)/.25; 
      //}
      //if(n>.6){
      // b=0;
      //// r = -255*(n-.6)/.4+230;
      //g = -255*(n-.6)/.3+270;
      //}
      
      //if(n>.7){
      // r = 255*(n-0.5)/0.5+150; 
      // //g = 255*(n-0.5)/0.5+150;
      // //b = 255*(n-0.3)/0.7;
      // //r =255;
      // g=255*(n-.7)/.3+160;
      // b=255*(n-.7)/.1;
      //}
      // Turn it into a gray color by scaling to 0--255
      if(n<.5){
        n=255;  
      }
      else{
        
      n=n*255;
      }
      stroke(n, n, n);
      // Draw a pixel
      point(i, j);
    }
  }  
}

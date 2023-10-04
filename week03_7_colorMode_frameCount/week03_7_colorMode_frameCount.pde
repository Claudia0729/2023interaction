void setup()
{  
  size(500,500);
  //        H:0-360度 S:0-100% B:0-100%
  colorMode(HSB, 360, 100, 100 );//把顏色從RGB->HSB
}
void draw()
{
  background(frameCount%360, 97, 97);//顏色會漸變
  
}

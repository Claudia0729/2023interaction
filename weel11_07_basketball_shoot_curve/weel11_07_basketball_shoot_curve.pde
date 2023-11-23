PImage imgRack;
void setup()
{
  size(300,300);
  imgRack = loadImage("rack.jpg");
}
void draw()
{
  backgroun(255);
  image(imgRack,0,0);
  if(mousePressed)
  {
    fill(255); ellipse(posX,posY,20,20);
    line(posX,posY,mouseX,mouseY);
    fill(#FFA652); ellipse(mouseX,mouseY,20,20);
  
}
float posX =-100,posY = -100;//一開始 求不會出現
void mousePressed()
{
  posX = mouseX;
  posY = mouseY;
}

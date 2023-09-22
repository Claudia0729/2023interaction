PImage img, imgBox;
void setup()
{
  size(600,600);
  img = loadImage("princess.png");//仙杜瑞拉
  imgBox = loadImage("box.png");//雪地
}
void draw()
{
  imageMode(CENTER);
  if (mousePressed)
  {
    image(imgBox,mouseX, mouseY);
  }
  else
  {
    image(img, 300,300, 300,300);
  }
}

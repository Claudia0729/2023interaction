PImage img;//p語言的照片
void setup()
{
  size(800,600);
  img = loadImage("keyboard.png");
}
void draw()
{
  image(img,0,600-266);//鍵盤在畫布上的位置
  
}

//1.點 線 面
void setup()
{
  size(500,500);//視窗的大小
}
float x=250, y=250;//點所在的位置
float dx=1, dy=1;//點從座標(250,250)的位置 向左下移動
void draw()
{
  ellipse(x,y,5,5);//點的大小
  x += dx;
  y += dy;
}

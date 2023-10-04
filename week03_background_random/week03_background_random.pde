//1.點 線 面
void setup()
{
  size(500,500);//視窗的大小
  dx = random(-1,+1);//dx在-1和+1中間取亂數 亂數往哪裡跑
  dy = random(-1,+1);//dy在-1和+1中間取亂數 亂數往哪裡跑
}
float x=250, y=250;//點所在的位置
float dx=1, dy=1;//點從座標(250,250)的位置 向左下移動
void draw()
{
  background(0);//背景顏色為黑色
  ellipse(x,y,5,5);//點的大小
  x += dx;
  y += dy;
  if (x<0 || x>500) dx = -dx;//點超出範圍 就更改位置
  if (y<0 || y>500) dy = -dy;//點出出範圍 就更改位置
}

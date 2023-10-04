//1.點 線 面
void setup()
{
  size(500,500);//視窗的大小
  for (int i=0;i<20;i++ )
  {
    x[i] = random(500);
    y[i] = random(500);
    dx[i] = random(-1,+1);//dx = random(-1,+1);//dx在-1和+1中間取亂數 亂數往哪裡跑
    dy[i] = random(-1,+1);//dy = random(-1,+1);
  }
}
float [] x = new float[20];//float x=250, y=250;
float [] y = new float[20];
float [] dx = new float[20];//float dx=1, dy=1;
float [] dy = new float[20];
void draw()
{
  background(0);//背景顏色為黑色
  for (int i=0;i<20;i++ )
  {
    ellipse(x[i],y[i],5,5);//點的大小
    x[i] += dx[i];
    y[i] += dy[i];
    if (x[i]<0 || x[i]>500) dx[i] = -dx[i];//點超出範圍 就更改位置
    if (y[i]<0 || y[i]>500) dy[i] = -dy[i];//點出出範圍 就更改位置
  }
}

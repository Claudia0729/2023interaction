//1.點 線 面
void setup()
{
  size(500,500);//視窗的大小
  for (int i=0;i<N;i++ )
  {
    x[i] = random(500);
    y[i] = random(500);
    dx[i] = random(-1,+1);//dx = random(-1,+1);//dx在-1和+1中間取亂數 亂數往哪裡跑
    dy[i] = random(-1,+1);//dy = random(-1,+1);
  }
}
int N=50;
float [] x = new float[N];//float x=250, y=250;
float [] y = new float[N];
float [] dx = new float[N];//float dx=1, dy=1;
float [] dy = new float[N];
void draw()
{
  background(0);//背景顏色為黑色
  for (int i=0;i<N;i++ )
  {
    ellipse(x[i],y[i],5,5);//點的大小
    for ( int k=0;k<N;k++ )
    {
      float d = dist(x[i],y[i],x[k],y[k]);
      stroke(2.55*(100-d));//點和點相連的紅色線
      if(d<100)
      {
        line(x[i],y[i],x[k],y[k]);
        dx[i] += (x[k]-x[i])*0.00001;//距離夠近 加一點吸引力
        dy[i] += (y[k]-y[i])*0.00001;//加一點吸引力
      }  
    }
    x[i] += dx[i];
    y[i] += dy[i];
    if (x[i]<0 || x[i]>500) dx[i] = -dx[i];//點超出範圍 就更改位置
    if (y[i]<0 || y[i]>500) dy[i] = -dy[i];//點出出範圍 就更改位置
  }
}

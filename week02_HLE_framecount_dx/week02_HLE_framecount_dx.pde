float [] HLE = {-1042, -3479.7, 1003.7, -1669, -1639.6, -14219, -3655.1, -4917, 9363.2, -4271.8, -24, 681};
int N=12;//HLE陣列中值的數量
void setup()
{
  size(500,500);
}
void draw()
{
  background(#FFFFF2);
  //             從無到有走了幾格 /100把HLE的值做縮小
  float dx = HLE[frameCount%N]/200;//有dx的移動量
  rect(200+dx,200,100,100);//正方形
}

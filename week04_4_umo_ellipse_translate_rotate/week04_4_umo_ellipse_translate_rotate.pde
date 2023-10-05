void setup()
{
  size(400,400);//製作uno卡片 
}
int [][] card = new int [8][11];
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF};//UNO卡牌的顏色
void draw()
{
  background(255);
  for ( int i=0;i<8;i++ )
  {
    for( int j=0;j<11;j++ )
    {//      x 座標 y座標  顏色
      drawCard(j*32,i*50,C[i%4]);//把下面兩行合起來
      //fill(C[i%4]);
      //               牌的寬 高
      //rect(j*32, i*50, 32, 50);
      
    }
  }
}
void drawCard( int x, int y, color c)
{
  stroke(128);//灰色的邊框
  fill(255);//白色的背景
  rect(x, y, 32, 50, 7);//圓弧的弧度(7)
  noStroke();
  fill(c);
  rect(x+3, y+3 , 32-5, 50-5, 2);
  
  pushMatrix();//電腦圖學
  fill(255);//白色
  translate(x+16, y+25);
  rotate(radians(45));//橢圓旋轉45度
  ellipse(0, 0, 30, 40);//橢圓
  popMatrix();
}

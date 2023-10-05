void setup()
{
  size(400,400);//製作uno卡片 
  myShuffle();//洗牌
}
void myShuffle()
{
  for ( int i=0;i<8;i++ )
  {
    for (int j=0;j<11;j++ )
    {
      cardN[i*11+j] = j;
      cardC[i*11+j] = C[i%4];
    }
  }
  int a = int(random(88)), b = int(random(88));
  int temp = cardN[a];
  cardN[a] = cardN[b];
  cardN[b] = temp;
  
  temp = cardC[a];
  cardC[a] = cardC[b];
  cardC[b] = temp;
}
//int [][] card = new int [8][11];
int [] cardN = new int[88];//卡片的數字
int [] cardC = new int[88];//卡片的顏色
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF};//UNO卡牌的顏色
void draw()
{
  background(255);
  for ( int i=0;i<8;i++ )
  {
    for( int j=0;j<11;j++ )
    {//      x 座標 y座標  顏色
      //drawCard(j*32,i*50,C[i%4],j);//把下面兩行合起來
      drawCard(j*32, i*50, cardC[i*11+j], cardN[i*11+j]);
      
    }
  }
}
void drawCard( int x, int y, color c, int n)
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
  ellipse(0, 0, 20, 30);//橢圓
  popMatrix();
  
  textSize(9);//字的大小
  textAlign(CENTER,CENTER);
  text(""+n, x+5, y+5);//字的y座標是以底部為基準
  
  textSize(20);//uno中間的數字
  fill(c);
  text(""+n, x+16, y+22);
  
  
  
}

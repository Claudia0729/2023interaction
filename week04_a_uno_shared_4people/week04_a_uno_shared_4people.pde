void setup()
{
  size(850,850);//製作uno卡片 
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
  for ( int i=0;i<10000;i++ )
  {
    int a = int(random(88)), b = int(random(88));
    int temp = cardN[a];
    cardN[a] = cardN[b];
    cardN[b] = temp;
    
    temp = cardC[a];
    cardC[a] = cardC[b];
    cardC[b] = temp;
  }
}
//int [][] card = new int [8][11];
int [] cardN = new int[88];//卡片的數字
int [] cardC = new int[88];//卡片的顏色
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF};//UNO卡牌的顏色
void draw()
{
  background(255);
  if( mousePressed && mouseButton==RIGHT )
  {
    for ( int i=0;i<8;i++ )
    {
      for( int j=0;j<11;j++ )
      {//      x 座標 y座標  顏色
        //drawCard(j*32,i*50,C[i%4],j);//把下面兩行合起來
        drawCard(j*32, i*50, cardC[i*11+j], cardN[i*11+j], 32);//小卡片
        
      }
    }
  }
  else drawCard(50, 50, #000000, 99, 128);
  
  for (int i=0;i<myCard;i++ )
  {//        x座標  
    if (i%4==0 ) drawCard(430 +40*i/4,50, cardC[i], cardN[i], 128);
    if (i%4==1 ) drawCard(630 +40*i/4,350, cardC[i], cardN[i], 128);
    if (i%4==2 ) drawCard(430 +40*i/4,650, cardC[i], cardN[i], 128);
    if (i%4==3 ) drawCard(230 +40*i/4,350, cardC[i], cardN[i], 128);
  }
}
int myCard = 0;
void mousePressed()
{
  if(mouseButton==LEFT) myCard++;
}
void drawCard( int x, int y, color c, int n, int w)
{
  float s = w/32.0;//卡片的縮放倍率
  stroke(128);//灰色的邊框
  fill(255);//白色的背景
  rect(x, y, 32*s, 50*s, 7*s);//圓弧的弧度(7)
  noStroke();
  fill(c);
  rect(x+2.5*s, y+2.5*s , 32*s-5*s, 50*s-5*s, 4*s);
  
  pushMatrix();//電腦圖學
  fill(255);//白色
  translate(x+16*s, y+25*s);
  rotate(radians(45));//橢圓旋轉45度
  ellipse(0, 0, 20*s, 30*s);//橢圓
  popMatrix();
  
  textSize(9*s);//字的大小
  textAlign(CENTER,CENTER);
  text(""+n, x+7*s, y+6*s);//字的y座標是以底部為基準
  
  textSize(20*s);//uno中間的數字
  fill(c);
  text(""+n, x+16*s, y+22*s);
  
  
  
}

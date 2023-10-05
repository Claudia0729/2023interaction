void setup()
{
  size(400,400);//製作uno卡片 
}
int [][] card = new int [8][11];
void draw()
{
  background(255);
  for ( int i=0;i<8;i++ )
  {
    for( int j=0;j<11;j++ )
    {//               牌的寬 高
      rect(j*30, i*50, 32, 50);
      
    }
  }
}

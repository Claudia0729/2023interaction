PImage img;//p語言的照片
int [][] pos = {{83,456},{117,455},{150,455},{187,455},{220,456},{257,456},{290,455},{324,454},{356,460},{387,458},{92,492},{127,489},{164,489},{194,489},{233,490},{261,491},{295,492},{329,488},{370,493},{108,523},{142,525},{177,526},{214,523},{247,524},{276,526},{324,526},{346,526},{383,526},{416,524}};
void setup()
{
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點畫四邊形
}
void draw()
{
  background(#FFFFF2);//清背景色 淡黃色
  image(img,0,600-266);//鍵盤在畫布上的位置
  fill(255,0,0,128);//半透明紅色
  rect(mouseX,mouseY, 28,30,5);//寬度(28) 高度(30) 圓滑(5)
  fill(0,255,0,128);//半透明的綠色
  for( int i=0;i<26;i++ )
  {
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  
}
boolean [] pressed = new boolean[26];//Java的陣列宣告 都是0 或 false
void keyPressed()
{

  if( key>='a' && key<='z') pressed[key-'a'] = true; 
  
}
void keyReleased()
{
  if( key>='a' && key<='z') pressed[key-'a'] = false;
}
void mousePressed()
{
  println(mouseX,mouseY);//定位 印出mouse座標
}

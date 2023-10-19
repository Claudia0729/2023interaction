void setup()
{
   size(500,500); 
  textSize(64);//字的大小
  
}
String line = "";//字串
void draw()
{
  background(0);//背景黑色
  text("Input: "+line,100,100);
}
void keyPressed()
{
  if( key >= 'A' && key <= 'Z' ) line += key;//按鍵盤一個鍵 看的見的大寫
  if( key >= 'a' && key <= 'z' ) line += key;//按鍵盤一個鍵 看的見的小寫
  if( key == BACKSPACE && line.length()>0 ) 
  {
    line = line.substring(0, line.length()-1);//input會被刪掉
  }
}

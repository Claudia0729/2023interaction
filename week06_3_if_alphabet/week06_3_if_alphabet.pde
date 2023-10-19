void setup()
{
   size(500,500); 
  textSize(64);//字的大小
  
}
String line = "Input: ";//字串
void draw()
{
  text(line,100,100);
}
void keyPressed()
{
  if( key >= 'A' && key <= 'Z' ) line += key;//按鍵盤一個鍵 看的見的大寫
  if( key >= 'a' && key <= 'z' ) line += key;//按鍵盤一個鍵 看的見的小寫
  
}

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
  line += key;//按鍵盤一個鍵
}

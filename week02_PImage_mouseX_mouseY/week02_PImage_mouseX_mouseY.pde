//模仿第一個和第二個作業 作互動
PImage img;//宣告img的變數 要宣告在外面 setup和draw才會讀到
void setup()
{
  size(600,600);
  img = loadImage("chair.jpg");//要記得把圖片拉進來
}
void draw()
{
  image(img, mouseX, mouseY, 300, 300);//改用滑鼠變成互動
}
  

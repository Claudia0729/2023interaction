PImage img;
int [][] pos ={{92,489},{245,525},{178,523},{163,490},{153,457},{195,491},{230,491},{263,491},{324,457},{297,490},{330,490},{365,490},{314,525},{280,524},{356,457},{392,456},{83,456},{186,457},{128,491},{221,457},{288,457},{212,523},{119,456},{143,523},{255,457},{109,524}};
void setup()
{
  size(800,600);
  img =loadImage("keyboard.png");
  rectMode(CENTER);///用中心點來畫出四邊形
}
void draw()
{
  background(#FFFFF2);///淡黃色背景
  image(img, 0, 600-266);
  fill(255,0,0,128);///半透明的
  rect( mouseX, mouseY, 28, 30, 5);///依滑鼠座標印出方塊，5設定圓滑的角
  fill(0,255,0,128);//半透明的綠色
  for(int i=0;i<26;i++)
  {
    if(typing.charAt(ID)-'a'==i) rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);//字的顏色
  textSize(50);
  
  text(typing, 50, 50);//要打的字
  fill(255,0,0);//紅色
  text(typed+typing.charAt(ID), 50, 100);//現在要打的字 是typing.charAt(0)
  fill(0);//再用黑色 秀出已經打好的字
  text(typed,50,100);///已經打好的字
}
String typing ="printfprintfprintf";//目標打出的字
String typed = "";//一開始打了0個字
int ID = 0;//第幾個字要被打
boolean []pressed =new boolean[26];//Java的陣列宣告,都是0或false
void keyPressed()
{
  
  if(key>='a' && key<='z')
  {
    pressed[key-'a']=true;
    typed += key;
    ID ++;
    
  }
}
void keyReleased()
{
  if(key>='a' && key<='z')pressed[key-'a']=false;
}

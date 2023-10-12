ArrayList<PVector> pt;//大的資料結構ArrayList  
void setup()
{
  size(400,400,P3D);
  pt = new ArrayList<PVector>();//初始化 把大的資料結構準備好(裡面放小的資料結構)
}
void draw()
{
  background(#FFFFF2);
  pushMatrix();
    if( mousePressed && mouseButton==RIGHT)
    {
      translate(200,200);
      rotateY(radians(frameCount));
      translate(-200,-200);
    }
    for(PVector p : pt)
    {
      ellipse(p.x,p.y,10,10);//迴圈畫圓
    }
    beginShape();//開始畫
    for (PVector p : pt)//PVector是小的資料結構
    {//特殊的for迴圈會得到小的資料結構
      vertex(p.x,p.y,10,10);//三個不共線的頂點 圖形才會出現 
    }
    endShape();//結束畫
  popMatrix();
}
void mousePressed()
{
   if( mouseButton==LEFT )
   {
     pt.add( new PVector(mouseX,mouseY) ); 
   }
}//大的資料結構裡 加入小的PVector物件

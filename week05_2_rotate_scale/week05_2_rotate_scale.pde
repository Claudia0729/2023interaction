void setup()
{
  size(400,400,P3D);//Processing 3D的功能
}
void draw()
{
   background(#FFFFF2);
   pushMatrix();//備份矩陣
     translate(mouseX,mouseY);//移動
     rotateY(radians(mouseX));//旋轉 對Y軸轉 
     fill(0,255,0);//盒子面的顏色
     box(100);//3D的盒子 方塊
     
     noFill();//面不要填顏色
     scale(2);//放大兩倍
     box(100);//雖然是100的盒子 但上面有放大 它就放大了
   popMatrix();//還原矩陣
}

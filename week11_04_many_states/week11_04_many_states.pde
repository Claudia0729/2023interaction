int state = 0;//0表白色狀態 1表紅色狀態 2表藍色狀態
void setup()
{
  size(400,400);
  textSize(50);
}
void draw()
{
  if(state==0)
  {
    background(255);//白色
    fill(0); text("Click to Start",80,200);
  }
  
  else if(state==1)
  {
    background(255,0,0);//第1關 紅色
    
  }
  
  else if(state==2)
  {
    background(0,0,255);//第2關 藍色
  } 
}

void mousePressed()
{
  if(state==0) state=1;
}

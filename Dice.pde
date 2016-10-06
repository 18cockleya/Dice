Die one;
void setup()
{
 size(600,700);
 noLoop();
}
void draw()
{
 background(0);
 int dieX;
 int dieY = 50;
 int total = 0;
 for(int y = 1; y <= 3; y++)
 {
   dieX = 50;
   for(int x = 1; x <= 3; x++)
   {
    one = new Die(dieX,dieY);
    one.show();
    one.roll();
    total += one.rollDie;
    dieX += 200;
   }
   dieY += 200;
 } 
 fill(255,255,255);
 textSize(26);
 text("Total: " + total,50,650);
}
void mousePressed()
{
 redraw();
}
class Die
{
  int rollDie = int(random(1,7));
  int myX, myY;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
   if(rollDie==1)
    {      
      fill(0,0,0);
      ellipse(myX + 50,myY + 50,20,20);
    }
    else
    {
     if(rollDie==2)
     {
       fill(0,0,0);
       ellipse(myX + 80,myY + 20,20,20);
       ellipse(myX + 20,myY + 80,20,20);
     }
     else
     {
      if(rollDie==3)
      {
       fill(0,0,0);
       ellipse(myX + 80,myY + 20,20,20);
       ellipse(myX + 50,myY + 50,20,20);
       ellipse(myX + 20,myY + 80,20,20);
      }
      else
      {
        if(rollDie==4)
        {
         fill(0,0,0);
         ellipse(myX + 80,myY + 20,20,20);
         ellipse(myX + 20,myY + 80,20,20);
         ellipse(myX + 20,myY + 20,20,20);
         ellipse(myX + 80,myY + 80,20,20);
        }
        else
        {
          if(rollDie==5)
          {
           fill(0,0,0);
           ellipse(myX + 80,myY + 20,20,20);
           ellipse(myX + 20,myY + 80,20,20);
           ellipse(myX + 20,myY + 20,20,20);
           ellipse(myX + 80,myY + 80,20,20);
           ellipse(myX + 50,myY + 50,20,20);
          }
          else
          {
           fill(0,0,0);
           ellipse(myX + 80,myY + 20,20,20);
           ellipse(myX + 20,myY + 80,20,20);
           ellipse(myX + 20,myY + 20,20,20);
           ellipse(myX + 80,myY + 80,20,20);
           ellipse(myX + 20,myY + 50,20,20);
           ellipse(myX + 80,myY + 50,20,20);
          } 
         }   
      }
     }
   }
  }
void show()
  {
   fill(255,255,255);
   rect(myX,myY,100,100);
  }
}  

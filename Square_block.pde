//blue
class Square_block extends Blocks
{
 public Square_block()
  {
    myCenterX = 200;
    myCenterY = -100;
    myPointDirection = 0;
    
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -40;
    yCorners[0] = 40;
    xCorners[1] = 40;
    yCorners[1] = 40;
    xCorners[2] = 40;
    yCorners[2] = -40;
    xCorners[3] = -40;
    yCorners[3] = -40;
  }
  
  public void show()
  {
   fill(204, 238, 255);
   noStroke();
   
   double dRadians = myPointDirection*(Math.PI/90);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);
  }
  
  public void setX(int x)
   {
     myCenterX = x;
   }
   public int getX()
   {
     return (int)myCenterX;
   }
   public void setY(int y)
   {
     myCenterY = y;
   }
   public int getY()
   {
     return (int)myCenterY;
   }
    public void setPointDirection(int degrees)
   {
    myPointDirection = degrees;
   }
    public double getPointDirection()
   {
    return (double)myPointDirection;
   }
  
}
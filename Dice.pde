
 void setup()
  {
    size(500,600);
     textAlign(CENTER,CENTER);
      noLoop();
  }
  int clicks = 1;
  void draw()
  {
      background(0);
      int totalRoll=0;
      for (int x = 10; x<450; x=x+60)
      {
        for (int y = 10; y<450; y = y+60)
        {
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
      totalRoll= totalRoll+bob.diceNum;
      
        }
        
    }
//total counter
    fill(255);
    textSize(40);
    text("Total: " +totalRoll,250,520);
 //click counter   
    fill(255);
    textSize(20);
    text("Clicks: " + clicks,250,560);
   
  }
  void mousePressed()
  {
      redraw();
      clicks ++;
  }
  
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      int diceNum;
      //member variable declarations here
      
      Die(int x, int y) //constructor
      {//variable initializations here
         myX = x;
         myY = y;
       }
      void roll()
      {
          diceNum = (int)((Math.random()*6)+1);
      }
      void show()
      {
         fill(85,128,0);
        rect(myX,myY,50,50);
        fill(255);
       // fill((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
         if (diceNum==1){
         ellipse(myX+25,myY+25,10,10);}
          else if(diceNum == 3){
           ellipse(myX+25,myY+25,10,10);
           ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);}
          else if (diceNum ==5){
           ellipse(myX+25,myY+25,10,10);
           ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);  
           ellipse(myX+40,myY+40,10,10);
           ellipse(myX+10,myY+10,10,10);
         }
         else if(diceNum==2){
           ellipse(myX+40,myY+10,10,10); 
           ellipse(myX+10,myY+40,10,10);
         }
         else if (diceNum==4){
           ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);  
           ellipse(myX+40,myY+40,10,10);
           ellipse(myX+10,myY+10,10,10);
         }
         else {
           ellipse(myX+40,myY+10,10,10);
           ellipse(myX+10,myY+40,10,10);  
           ellipse(myX+40,myY+40,10,10);
           ellipse(myX+10,myY+10,10,10);
           ellipse(myX+40,myY+25,10,10);
           ellipse(myX+10,myY+25,10,10);
         }
      }

  }

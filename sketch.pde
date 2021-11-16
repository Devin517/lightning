int xPos, yPos, xEnd, yEnd;
boolean finish;


public void drawLightning(){
      while (yPos < 500){
        xEnd = xPos + (int)(Math.random()*4) -1;
        yEnd = yPos + (int)(Math.random()*9);
        
        stroke(255);
        line(xPos, yPos, xEnd, yEnd);
        xPos = xEnd;
        yPos = yEnd;
      }
      finish = true;
  }



void setup(){
  size(500, 500);
}

void draw(){
  fill(0, 10);
  rect(0, 0, width, height);
  strokeWeight((int)(Math.random()*6));
  drawLightning();
  if (finish == true){
    xPos = (int)(Math.random()*450);
    yPos = 1; 
  }
}

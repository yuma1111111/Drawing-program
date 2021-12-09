//Global Variables
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, red=#FF0303, black=#000000;
int reset=1;

void quitButtonSetup()
{
  quitButtonX = width*18/20;
  quitButtonY = height*0;
  quitButtonWidth = width*1/4;
  quitButtonHeight = height*1/20;
}//End quitButtonSetup()

void quitButtonDraw()
{
  //Quit Button Hover Over
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hover Over
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
}//End quitButtonDraw()

void quitButtonMousePressed()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitBuittonMousePressed()

void musicPlayerGUI_Setup() {

  /*
  stroke(); //changes the thickness of the line
   ellipse(); // Middle
   stroke(1); //resets default
   ellipse(); //Inside
   //Option to fill with different colours
   //fill(); //reminder: reset to defaults each time
   */

  //Play-Pause Button
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
    fill(purple);
    ellipse(width*1/2, height*1/2, width*1/16, width*1/16); //Courners Rounded more than Outer Rectangle, change?
  } else {
    fill(green);
    ellipse(width*1/2, height*1/2, width*1/16, width*1/16); //Courners Rounded more than Outer Rectangle, change?
    fill(reset);
    rect(width*1.95/4, height*1.9/4, width*0.1/16, height*1/18);
    
  }

  //triangle(); //Notice X&Y Coordinates
  //line();
  //line(); 

  //Mext and Previous Buttons
  /*
  triangle(); //Next Button
   triangle(); 
   line();
   triangle(); //Previous Button
   triangle(); 
   line();
   */

  //Volume Buttons
  //line(); //Volume Up
  //line();
  //line(); //Volume Down

  //Colour Fill Power Button
  //fill(); //Green for Play, Red for not-play, press for end()
  //ellipse(); 

  //Menu Button
  //ellipse(); //Concentric Rings
  //ellipse(); 
  //ellipse(); 
  //ellipse(); //3-dots
  //ellipse(); 
  //ellipse();
}

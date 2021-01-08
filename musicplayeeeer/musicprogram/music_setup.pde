void musicPlayerGUI_Setup() {

  



 // Play-Pause Button
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
    fill(purple);
    ellipse(width*1/2, height*1/2, width*1/16, width*1/16);
  } else {
    fill(green);
    ellipse(width*1/2, height*1/2, width*1/16, width*1/16); 
    fill(reset);
    rect(width*1.95/4, height*1.9/4, width*0.1/16, height*1/18);
  }
  //stop
  if (mouseX>width*1/3 && mouseX<width*1/3+1/16 && mouseY>height*1/2 && mouseY<height*1/2+1/16) {
    fill(purple);
    ellipse(width*1/3, height*1/2, width*1/16, width*1/16);
    rect(width*1.05/3, height*1.9/4, width*0.5/16, height*1/18 );
  } else {
    fill(green);
    ellipse(width*1/3, height*2/4, width*1/16, width*1/16); 
    fill(reset);
    rect(width*1/3.2, height*1.9/4, width*0.5/16, height*1/18);
  

  
 
  }
}

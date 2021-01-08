Boolean playButton = false;

void musicPlayerButtons() {
  

  //Play-Pause
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
        if ( song1.isPlaying() ) {
      song1.pause();
    } else {
      song1.play();
    }
  }
  //Next
  
  
  
  // end
  //Previous
  
  
  
  // end
  //Volume Up
  
  
  
  
  //end
  //Volume Down
  
  
  
  //end
  //Media
  
  
  
  //end
}

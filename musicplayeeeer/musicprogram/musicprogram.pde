import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global var
Minim minim;
AudioPlayer song1;
color white=#FFFFFF;
color reset;


void setup() {
  fullScreen();
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

  quitButtonSetup();
  musicSongs();
}

void draw() {
  background(white); 
  musicPlayerGUI_Setup();
  quitButtonDraw();
}
void keyPressed() {
  if (key == 'k' || key == 'K' ) {
    if ( song1.isPlaying()  ) {
      song1.pause();
    } else {
      song1.play();
    }
  }
}
//
{
  if ( key == 's' || key == 'S') {
    if (song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
    } else {
      song1.rewind();
    }
  }
}
//
{
  if ( key == 'f' || key == 'F') song1.skip(1000);
  if ( key == 'r' || key == 'R') song1.skip(-1000);
}
{
  if (key == 'l' || key == 'L' ) song1.loop();
}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}

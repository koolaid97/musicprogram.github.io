import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global var
Minim minim;
AudioPlayer song1;



void setup() {
  fullScreen();
  minim = new Minim(this);
  song1 = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  song1.play();
}

void draw() {
  
}

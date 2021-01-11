import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global var
Minim minim;
AudioPlayer song1;
AudioMetaData songMetaData1;
color white=#FFFFFF;
color reset;


void setup() {
  fullScreen();
  titleFont = createFont ("Impact", 55); 
  //
  quitButtonSetup();
    minim = new Minim(this);
  song1 = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  songMetaData1 = song1.getMetaData();
  //
  println("Start of Console");
  println("Click the Console to Finish Starting the Program");
  println("Press keyboard to test: K, etc");
  //
  println("File Name: ", songMetaData1.fileName());
  println("Song Length (in milliseconds);", songMetaData1.length());
  println("Song Length ( in seconds);", songMetaData1.length()/1000);  
  println("Song length ( in minutes and seconds;", songMetaData1.length()/60000);
  println("Song Title:", songMetaData1.title());
  println("Author:", songMetaData1.author());  
  println("Composer",songMetaData1.composer());
  println("albums", songMetaData1.album());
  println("Disk", songMetaData1.disc());  
  println("Publisher", songMetaData1.publisher());
  println("Date Realease" ,songMetaData1.date());
  println(songMetaData1);  
  println(songMetaData1);
  println(songMetaData1);
  println(songMetaData1);  
  println(songMetaData1);
  println(songMetaData1);
  println(songMetaData1);  
  println(songMetaData1);
  println(songMetaData1);
  println(songMetaData1);
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

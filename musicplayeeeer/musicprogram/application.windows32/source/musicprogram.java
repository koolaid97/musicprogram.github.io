import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class musicprogram extends PApplet {








// global var
PImage pic1, pic2, pic3;
float picX1, picY1, picImageWidthRatio1, picImageHeightRatio1, picWidth1, picHeight1, picX2, picY2, picImageWidthRatio2, picImageHeightRatio2, picWidth2, picHeight2, picX3, picY3, picImageWidthRatio3, picImageHeightRatio3, picWidth3, picHeight3;
int black=0xff272626, red=0xffFF0313;
float r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40;
Minim minim;
float t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
String title2="FF";
String title3="Reverse";
String title4="looooop";
String title5 ="next";
String title6= "previous";
int currentSong = numberOfSongs - numberOfSongs;
int white=0xffFFFFFF;
int reset;


public void setup() {
  
  titleFont = createFont ("Impact", 55); 
  //
  pic1= loadImage("muriel.jpg");
  pic2= loadImage("prant.jpg");
  pic3= loadImage("tak.jpg");
  quitButtonSetup();
  minim = new Minim(this);
  song[0] = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  song[1] = minim.loadFile("../../music/Phrase Prant - josh pan.mp3");
  song[2] = minim.loadFile("../../music/Tak - Bobby Richards.mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i = currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }

  //

  {
    println("Start of Console");
    println("Click the Console to Finish Starting the Program");
    println("Press keyboard to test: p, etc");
    //

    for ( int i=currentSong; i<numberOfSongs; i++) {
      println("File Name: ", songMetaData[i].fileName() );
      println("Song Length (in milliseconds); ", songMetaData[i].length() );
      println("Song Length (in seconds): ", songMetaData[i].length()/1000 );
      println("Song Length (in mintues and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "seconds" );
      println("Song Title: ", songMetaData[i].title() );
      println("Author: ", songMetaData[i].author() );
      println("Composer: ", songMetaData[i].composer() );
      println("Orchestra: ", songMetaData[i].orchestra() );
      println("Albums: ", songMetaData[i].album() );
      println("Disk: ", songMetaData[i].disc() );
      println("Publisher: ", songMetaData[i].publisher() );
      println("Date Release: ", songMetaData[i].date() );
      println("Copyright: ", songMetaData[i].copyright() );
      println("Comments: ", songMetaData[i].comment() );
      println("Lyrics: ", songMetaData[i].lyrics() );
      println("Track: ", songMetaData[i].track() );
      println("Genre: ", songMetaData[i].genre() );
      println("Encoded: ", songMetaData[i].encoded() );
    }
  }
  r1=width*1/2.1f;
  r2=height*1/2.1f;
  r3=width*1/15;
  r4=height*1/15;
  r5=width*1/2.03f;
  r6=height*1/2.08f;
  r7=width*1/85;
  r8=height*1/17;
  r9=width*1/1.94f;
  r10=height*1/2.08f;
  r11=width*1/85;
  r12=height*1/17;
  r13=width*1/30;
  r14= height*1/15;
  r15=width*1/15;
  r16=height*1/15;
  r17=width*1/21;
  r18=height*1/15;
  r19=width*1/25;
  r20= height*1/15;
  //
  r21=width*1/30;
  r22=height *1/5;
  r23=width*1/15;
  r24=height*1/15;
  r25=width*1/4;
  r26=height*1/2.1f;
  r27=width*1/15;
  r28=height*1/15;
  r29=width*1/3;
  r30=height*1/2.1f;
  r31=width*1/15;
  r32=height*1/15;
  r33=width*2/3;
  r34=height*1/2.1f;
  r35=width*1/15;
  r36=height*1/15;
  r37=width*3/4;
  r38=height*1/2.1f;
  r39=width*1/15;
  r40=height*1/15;
  t5=width*2.07f/3;
  t6=height*1/2.1f;
  t7=width*1/15;
  t8=height*1/15;
  t9=width*1/3;
  t10=height*1/2.1f;
  t11=width*1/15;
  t12=height*1/15;
  t13=width*1/30;
  t14=height*1/5;
  t15=width*1/15;
  t16=height*1/15;
  t17=width*3/4;
  t18=height*1/2.1f;
  t19=width*1/15;
  t20=height*1/15;
  t21=width*1/4;
  t22=height*1/2.1f;
  t23=width*1/15;
  t24=height*1/15;


  //
  background(white);
  fill(green);
  rect(r1, r2, r3, r4);
  fill(red);
  rect(r13, r14, r15, r16);
  fill(black);
  rect(r17, r18, r19, r20);
  rect(r5, r6, r7, r8);
  rect(r9, r10, r11, r12);
  rect(r21, r22, r23, r24);
  rect(r25, r26, r27, r28);
  rect(r29, r30, r31, r32);
  rect(r33, r34, r35, r36);
  rect(r37, r38, r39, r40);

  fill(red); //reset
  titleFont = createFont ("Impact", 35);
  textFont(titleFont);
  text(title2, t5, t6, t7, t8);
  textAlign (CENTER, CENTER);
  fill(purple); //reset
  titleFont = createFont ("Impact", 25);
  textFont(titleFont);
  text(title3, t9, t10, t11, t12);
  textAlign (CENTER, CENTER);
  fill(green); //reset
  titleFont = createFont ("Impact", 20);
  textFont(titleFont);
  text(title4, t13, t14, t15, t16);
  textAlign (CENTER, CENTER);
  fill(red); //reset
  titleFont = createFont ("Impact", 25);
  textFont(titleFont);
  text(title5, t17, t18, t19, t20);
  textAlign (CENTER, CENTER);
  fill(green); //reset
  titleFont = createFont ("Impact", 25);
  textFont(titleFont);
  text(title6, t21, t22, t23, t24);
  textAlign (CENTER, CENTER);

  picImageWidthRatio1 = 700.0f/700.0f; //Image width is longer, thus 1
  picImageHeightRatio1 = 600.0f/700.0f; //Image height is shorter, thus <1
  picX1 = width*1/4;
  picY1 = height*0;
  picWidth1 = width*2/4 * picImageWidthRatio1; //remains longer side, "*1"
  picHeight1 = height*1/2.2f * picImageHeightRatio1; //becomes shorter side, "*<1"
  if (picHeight1 >height*1/2) println("Image #1 display issues"); //dimension might be 'cut-off'
  //
  picImageWidthRatio2 = 700.0f/700.0f; //Image width is longer, thus 1
  picImageHeightRatio2 = 600.0f/700.0f; //Image height is shorter, thus <1
  picX2 = width*1/4;
  picY2 = height*0;
  picWidth2 = width*2/4 * picImageWidthRatio2; //remains longer side, "*1"
  picHeight2 = height*1/3 * picImageHeightRatio2; //becomes shorter side, "*<1"
  if (picHeight2 >height*1/2) println("Image #1 display issues"); //dimension might be 'cut-off'
  picImageWidthRatio3 = 700.0f/700.0f; //Image width is longer, thus 1
  picImageHeightRatio3 = 600.0f/700.0f; //Image height is shorter, thus <1
  picX3 = width*1/4;
  picY3 = height*0;
  picWidth3 = width*2/4 * picImageWidthRatio3; //remains longer side, "*1"
  picHeight3 = height*1/3 * picImageHeightRatio3; //becomes shorter side, "*<1"
  if (picHeight3 >height*1/2) println("Image #1 display issues"); //dimension might be 'cut-off'
}
//

public void draw() {


  quitButtonDraw();

  if (song[0].isPlaying()) {
    image(pic1, picX1, picY1, picWidth1, picHeight1);
  }
  if (song[1].isPlaying()) {
    image(pic2, picX2, picY2, picWidth2, picHeight2);
  }
  if (song[2].isPlaying()) {
    image(pic3, picX3, picY3, picWidth3, picHeight3);
  }
  //
}
public void keyPressed() {
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }//End of Play-Pause Button
  //
  if (key == 's' || key == 'S') {//Stop Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
    } else { //Song is not playing
      song[currentSong].rewind();
    }
  }// End Stop Button
  //
  if ( key == 'f' || key == 'F') song[currentSong].skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); // skip backward 1 second (1000 milliseconds)
  //
  if ( key == 'l' || key =='L' ) song[currentSong].loop(loopIntNum); //Loop Button
  //
  if ( key == 'n' || key == 'N') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else { 
        currentSong++;
      }
    }
    ;
  }
}
{
  if ( key == 'b' || key == 'B') {    
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs- numberOfSongs) {
        currentSong = numberOfSongs -1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else { 
        currentSong++;
      }
    }
    currentSong--;
  }
}

public void mouseClicked() { 
  quitButtonMouseClicked();
  if ( mouseX>r1  && mouseX<r1+r3  && mouseY>r2 && mouseY<r2+r4) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  if ( mouseX>r13  && mouseX<r13+r15  && mouseY>r14 && mouseY<r14+r16)
  {//Stop Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {//.legnth() = end
      song[currentSong].rewind();
    } else { //Song is not playing
      song[currentSong].rewind();
    }
  }
  if ( mouseX>r21  && mouseX<r21+r23  && mouseY>r22 && mouseY<r22+r24) {
    song[currentSong].loop(loopIntNum);
  }
  if ( mouseX>r25  && mouseX<r25+r27  && mouseY>r26 && mouseY<r26+r28) {
    {    
      if (song[currentSong].isPlaying()) {
        song[currentSong].pause();
        song[currentSong].rewind();
        if (currentSong == numberOfSongs- numberOfSongs) {
          currentSong = numberOfSongs -1;
        } else {
          currentSong--;
        }
        song[currentSong].play();
      } else {
        song[currentSong].rewind();
        if (currentSong == numberOfSongs -1) {
          currentSong= numberOfSongs- numberOfSongs;
        } else { 
          currentSong++;
        }
      }
      currentSong--;
    }
  }
  if ( mouseX>r29  && mouseX<r29+31  && mouseY>r30 && mouseY<r30+r32) {
    song[currentSong].skip(-5000);
  }
  if ( mouseX>r33  && mouseX<r33+35  && mouseY>r34 && mouseY<r34+r36) {
    song[currentSong].skip(5000);
  }
  if ( mouseX>r37  && mouseX<r37+39  && mouseY>r38 && mouseY<r38+r40) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if (currentSong == numberOfSongs -1) {
        currentSong= numberOfSongs- numberOfSongs;
      } else { 
        currentSong++;
      }
    }
    ;
  }
}
int purple = 0xffFF03F3;
int yellow = 0xffFFF703;
int green=0xff00CE24;
String title= "X";
PFont titleFont;

public void quitButtonSetup() {
  titleFont = createFont ("Impact", 55); 
}

public void quitButtonDraw() {
  if (mouseX>width*14/16 && mouseX<width && mouseY>0 && mouseY<height*2/16) { //Hover Over
    fill(yellow);
    rect(width*14/16, height*0/16, width*2/16, height*2/16);
  } else {
    fill(purple);
    rect(width*14/16, height*0/16, width*2/16, height*2/16);
  }

 
  fill(green); 
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 55); //Change the number until it fits, largest font size
  text(title, width*14/16, height*0/16, width*2/16, height*2/16);
  fill(255); //Reset to white for rest of the program
}

public void quitButtonMouseClicked() {
  if (mouseX>width*14/16 && mouseX<width && mouseY>0 && mouseY<height*2/16) {
    exit();
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "musicprogram" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

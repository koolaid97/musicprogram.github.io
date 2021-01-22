import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global var
color black=#272626, red=#FF0313;
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
color white=#FFFFFF;
color reset;


void setup() {
  fullScreen();
  titleFont = createFont ("Impact", 55); 
  //
  quitButtonSetup();
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../../music/Phrase Prant - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../../music/Tak - Bobby Richards.mp3");
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
  r1=width*1/2.1;
  r2=height*1/2.1;
  r3=width*1/15;
  r4=height*1/15;
  r5=width*1/2.03;
  r6=height*1/2.08;
  r7=width*1/85;
  r8=height*1/17;
  r9=width*1/1.94;
  r10=height*1/2.08;
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
  r26=height*1/2.1;
  r27=width*1/15;
  r28=height*1/15;
  r29=width*1/3;
  r30=height*1/2.1;
  r31=width*1/15;
  r32=height*1/15;
  r33=width*2/3;
  r34=height*1/2.1;
  r35=width*1/15;
  r36=height*1/15;
  r37=width*3/4;
  r38=height*1/2.1;
  r39=width*1/15;
  r40=height*1/15;
  t5=width*2.07/3;
  t6=height*1/2.1;
  t7=width*1/15;
  t8=height*1/15;
  t9=width*1/3;
  t10=height*1/2.1;
  t11=width*1/15;
  t12=height*1/15;
  t13=width*1/30;
  t14=height*1/5;
  t15=width*1/15;
  t16=height*1/15;
  t17=width*3/4;
  t18=height*1/2.1;
  t19=width*1/15;
  t20=height*1/15;
  t21=width*1/4;
  t22=height*1/2.1;
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
}
//

void draw() {


  quitButtonDraw();
}
void keyPressed() {
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
void mouseClicked() { 
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
  if ( mouseX>r29  && mouseX<r29+31  && mouseY>r30 && mouseY<r30+r32)
    song[currentSong].skip(-5000);
}

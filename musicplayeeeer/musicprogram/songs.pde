void musicSongs() {
  minim = new Minim(this);
  song1 = minim.loadFile("../../music/Muriel - Bobby Richards.mp3");
  songMetaData1 = song1.getMetaData();
}

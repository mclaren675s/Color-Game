import processing.javafx.*;

//Alex Chapman
//Sept 27th 2022

//Fonts
PFont fancy;
PFont normal;
PFont scorefont;

//Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME  = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//game mechanics
int randomWord = (int) random(0, 3);
int randomColor = (int) random(0, 3);
boolean match;
int score;
int highscore;
float timer;

//color variables
color white = #FFFFFF;
color black = #000000;

color red = #ff0000;
color orange = #ff0000;
color yellow = #ff0000;
color green = #00ff00;
color blue = #0000ff;
color ied = #ff0000;
color ved = #ff0000;

//game arrays      0       1        2
String[] words = {"RED", "GREEN", "BLUE"};
color[] colors = {red, green, blue};

//gif stuffs
PImage[] gif;
int numberOfFrames;
int f;

//sound variables
Minim minim;
AudioPlayer THEME, SUCCESS,FAILURE,ENDGAME;

void setup() {
  size(800, 800, FX2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  score = 0;
  
  //
  //String[] fontList = PFont.list();
  //printArray(fontList);
  //f = createFont("Stereofunk", 34);
  //
  
  
  timer = 100;
  
  //GIF STUFFZ
  numberOfFrames = 75;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.11s.gif");
    i=i+1;
  }

  //fonts
  fancy = createFont("Bluetea.ttf", 80);
  normal = createFont("normal.tff", 40);
  scorefont = createFont("RETROLIGHT.tff", 80);
  
  //minim
  minim = new Minim(this);
  THEME = minim.loadFile("MUSIC.mp3");
  FAILURE = minim.loadFile("FAILURE.wav");
  SUCCESS = minim.loadFile("SUCCESS.wav");
  ENDGAME = minim.loadFile("gameover.opus"); 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

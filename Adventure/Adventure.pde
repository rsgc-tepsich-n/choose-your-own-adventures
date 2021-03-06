//Sound File
import processing.sound.*;

//Variables using rect
float rect1X = 30;
float rect1Y = 90;
float rect2X = 100;
float rect2Y = 60;
float rect3X = 180;
float rect3Y = 100;

//Variables for speed
float a = random(2, 5);
float b = random(2, 5);
float c = random(2, 5);

//Score Variable
int Score = 0;
//time should equal zero
int time = 0;

//Sound File
SoundFile file;

//start screen
boolean startScreen = true;

//when click your mouse if your fill value is 255 make the value be 0 otherwise make the value white agian
int fillForSquareOne = 255;
int fillForSquareTwo = 255;
int fillForSquareThree = 255;

void setup() {
  // Create canvas to work on
  size(300, 600);

  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "PianoTiles.mp3");
  file.play();
} 

void draw() {
  //make square scoll down screen with variables

  //Start Screen
  if (startScreen)
  {
    background(51);
    fill(0, 102, 153);
    text("PRESS SPACE TO START", 80, 300);
  } else
  {
    //Square 1
    background(100);
    rect1Y=rect1Y+ a;
    fill(fillForSquareOne);
    rect(rect1X, rect1Y, 55, 100);
    //when the why of the square is greeter than the butotm it puts it on the top
    if (rect1Y>605) {
      rect1Y=-100;
      a = random(1, 5);
      fillForSquareOne = 255;
    }

    //Square 2
    rect2Y += b;
    fill(fillForSquareTwo);
    rect(rect2X, rect2Y, 55, 100);
    //when the why of the square is greeter than the butotm it puts it on the top
    if (rect2Y>height+5) {
      rect2Y=-100;
      b = random(1, 5);
      fillForSquareTwo = 255;
    }

    //Square 3
    rect3Y=rect3Y+ c;
    fill(fillForSquareThree);
    rect(rect3X, rect3Y, 55, 100);
    //when the why of the square is greeter than the butotm it puts it on the top
    if (rect3Y>height+5) {
      rect3Y=-100;
      c = random(1, 5);
      fillForSquareThree = 255;
    }
    // once a second
    if (frameCount % 60 == 0) {
      time += 1;
      println(time);
    }
    // show the time
    text(time, 270, 50);
    fill(0);
    text("Score: " +  Score, 250, 25);
  }
  //When tile 1,2,3 is white when reaches 600 game over
  println(fillForSquareOne);
  if (fillForSquareOne == 255 && rect1Y > 600) { 
    exit();
  }
  if (fillForSquareTwo == 255 && rect2Y > 600) { 
    exit();
  }
  if (fillForSquareThree == 255 && rect3Y > 600) { 
    exit();
  }
}

void mouseClicked () { 
  if (mouseX > rect1X && mouseX < rect1Y + 55 && mouseY > rect1Y && mouseY < rect1Y +100) {
    fillForSquareOne=0;
  } 
  if (mouseX > rect2X && mouseX < rect2Y + 200 && mouseY > rect2Y && mouseY < rect2Y +255) {
    fillForSquareTwo = 0;
  } 
  if (mouseX > rect3X && mouseX < rect3Y + 250 && mouseY > rect3Y && mouseY < rect3Y +305) {
    fillForSquareThree=0;
  } 

  //make tile 1 turn white when reaches 600
  if (rect1Y > 601) { 
    fillForSquareOne = 255;
  }
  //make tile 2 turn white when reaches 600
  if (rect2Y > 601) { 
    fillForSquareTwo = 255;
  }
  //make tile 3 turn white when reaches 600
  if (rect3Y > 601) { 
    fillForSquareThree = 255;
  }
}
//Key Pressed for start screen
void keyPressed()
{
  // KeyPressed for start screen
  if (key == ' ')startScreen = false;
}

//Work Cited
// https://processing.org/reference/libraries/sound/SoundFile.html
// https://processing.org/reference/boolean.html
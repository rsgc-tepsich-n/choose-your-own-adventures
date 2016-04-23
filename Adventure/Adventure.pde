//Variables for square
//Variables using rect
float rect1X = 30;
float rect1Y = 90;
float rect2X = 100;
float rect2Y = 60;
float rect3X = 200;
float rect3Y = 100;

//Variables for speed
float a = random(2, 7);
float b = random(2, 7);
float c = random(2, 7);

//when click your mouse if your fill value is 255 make the value be 0 otherwise make the value white agian
int fillForSquareOne = 255;
int fillForSquareTwo = 255;
int fillForSquareThree = 255;

void setup() {
  // Create canvas to work on
  size(300, 600);
} 

void draw() {
  //make square scoll down screen with variables

  //Square 1
  background(100);
  rect1Y=rect1Y+ a;
  fill(fillForSquareOne);
  rect(rect1X, rect1Y, 55, 100);
  //when the why of the square is greeter than the butotm it puts it on the top
  if (rect1Y>600) {
    rect1Y=-100;
    a = random(1, 7);
  }

  //Square 2
  rect2Y += b;
  fill(fillForSquareTwo);
  rect(rect2X, rect2Y, 55, 100);
  //when the why of the square is greeter than the butotm it puts it on the top
  if (rect2Y>height) {
    rect2Y=-100;
    b = random(1, 7);
  }

  //Square 3
  rect3Y=rect3Y+ c;
  fill(fillForSquareThree);
  rect(rect3X, rect3Y, 55, 100);
  //when the why of the square is greeter than the butotm it puts it on the top
  if (rect3Y>height) {
    rect3Y=-100;
    c = random(1, 7);
  }
}

void mouseClicked () { 
  if (mouseX > rect1X && mouseX < rect1Y + 55 && mouseY > rect1Y && mouseY < rect1Y +100) {
    fillForSquareOne=0;
  } else if (mouseX > rect2X && mouseX < rect2Y + 200 && mouseY > rect2Y && mouseY < rect2Y +255) {
    fillForSquareTwo = 0;
  } else if (mouseX > rect3X && mouseX < rect3Y + 250 && mouseY > rect3Y && mouseY < rect3Y +305) {
    fillForSquareThree=0;
  }
}
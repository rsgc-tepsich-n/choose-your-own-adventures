//Variables for square
int ab = 20;
float bc = 60;
float cd = 100;
int de = 80;
int ef = 70;
int fg = 10;
int gh = 50;
float hi = 90;

//Variables for speed
int d = 1;
int e = 5;
float f = random(1, 7);
int g = 7;
int h = 2;
float i = random(1, 7);
float j = random(1, 7);
;
float k = 0.5;
int l = 3;
int m = 7;
int n = 1;
int o = 1;
int p = 3;
int q = 1;
int r = 5;
int s = 6;
int t = 7;
int u = 3;
int v = 7;
int w = 1;
int x = 7;
int z = 4;
int y = 4;

void setup() {
  // Create canvas to work on
  size(300, 600);
} 

void draw() {
  //make square scoll down screen with variables
  //Square 1
  background(100);
  hi=hi+ i;
  rect(30, hi, 55, 100);
  if (hi>600) {
    hi=-100;
    i = random(1, 7);
  }


    //Square 2
    bc += j;
    rect(100, bc, 55, 100);
    if (bc>600) {
      bc=-100;
      j = random(1, 7);
    }

    //Square 3
    cd=cd+ f;
    rect(200, cd, 55, 100);

    //when the why of the square is greeter than the butotm it puts it on the top
    if (cd>600) {
      cd=-100;
      f = random(1, 7);
    }
  }
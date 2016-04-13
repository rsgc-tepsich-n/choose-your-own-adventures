//Variables for square
int ab = 20;
int bc = 60;
int cd = 100;
int de = 80;
int ef = 70;
int fg = 10;
int gh = 50;
int hi = 90;

//Variables for speed
int d = 1;
int e = 5;
float f = 0.1;
int g = 7;
int h = 2;
int i = 1;
int j = 7;
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
  y += i;
  rect(30, 20 +y, 55, 100);

  //Square 2
  y += i;
  rect(100, bc + y, 55, 100);
  
  //Square 3
  y += f;
  rect(200, cd + y, 55, 100);
}
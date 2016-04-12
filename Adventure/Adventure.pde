void setup() {
  // Create canvas to work on
  size(500, 600);
}
//Variables for square
int a = 50;
int b = 100;
int c = 160;

//Variables for speed
int d = 3;
int e = 5;
int f = 4;
int g = 7;
int h = 2;
int i = 1;
int j = 7;
int k = 10;
int l = 3;
int m = 7;
int n = 10;
int o = 8;
int p = 3;
int q = 1;
int r = 5;
int s = 6;
int t = 7;
int u = 9;
int v = 7;
int w = 1;
int x = 10;
int z = 15;

//make square scoll down screen with variables
float y = z;
void draw() {
  background(100);
  y += 2;
  rect(30, 20 +y, 55, 100);
}
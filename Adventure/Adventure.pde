void setup() {
  // Create canvas to work on
  size(500, 600);
}
//make square scoll down screen
float y = 0;
void draw() {
  background(100);
  y += 2;
  rect(30, 20 +y, 55, 100);
}
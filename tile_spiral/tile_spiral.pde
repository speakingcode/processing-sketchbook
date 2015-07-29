int height = 1000,
    width  = 1000;

void setup() {
  size(width, height);
  smooth();
  background(255);  
} 

void draw() {
  drawHalf(mouseX, mouseY, width, height);
}

void drawHalf(int x1, int y1, int x2, int y2) {
  if (area(x1, y1, x2, y2) <= 4)  return;
  fill(random(255), random(255), random(255));
  rect(x1, y1, x2, y2);
  drawHalf(x2, abs(y2 - y1) / 2, y1, x1); 
}

int area(int x1, int y1, int x2, int y2) {
  return abs(x2 - x1) * abs(y2 - y1);
}

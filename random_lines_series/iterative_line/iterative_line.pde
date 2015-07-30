size(500, 100);
background(255);
strokeWeight(5);
smooth();

int step    = 10;
float lastX = -999;
float lastY = -999;
float y     = 50;
int border  = 20;

for (int x = border; x <= width-border; x += step) {
  if (lastX > -999) {
    line(x, y, lastX, lastY);
  }
  lastX = x;
  lastY = y;
}


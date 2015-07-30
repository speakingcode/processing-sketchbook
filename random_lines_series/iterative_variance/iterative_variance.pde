size(500, 100);
background(255);
strokeWeight(5);
smooth();

int step    = 10;

float lastX = -999,
      lastY = -999;

float y     = 50;
int borderX = 20,
    borderY = 10;

for (int x = borderX; x <= width - borderX; x += step) {
  y = borderY + random(height - 2 * borderY);
  if (lastX > -999) {
    line(x, y, lastX, lastY);
  }
  lastX = x;
  lastY = y;
}


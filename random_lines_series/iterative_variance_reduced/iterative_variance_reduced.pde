size(500, 100);
background(255);
strokeWeight(5);
smooth();

float xStep = 10,
      yStep = 10;

float lastX = 20,
      lastY = 50;

float y     = 50;
int borderX = 20,
    borderY = 10;

for (int x = borderX; x <= width - borderX; x += xStep) {
  yStep = random(20) - 10; //-10 to 10
  y += yStep;
  line(x, y , lastX, lastY);
  
  lastX = x;
  lastY = y;
}


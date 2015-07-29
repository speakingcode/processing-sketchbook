float max_distance;
int theta = 1;
int beta = 1;
boolean isIncreasingSize = true;

int r = 1, g = 50, b = 100;
int br = 100, bg = 150, bb = 200;

void setup() {
  size(1024, 768);
  smooth();
  
  max_distance = dist(0, 0, width, height);
    stroke(0);
}

void draw() 
{

  fill(r % 256, g % 256, b % 256);

//  fill(random(0,255), random(0,255), random(0,255)); 
//  stroke(r % 255, g % 256, b % 256);
//  fill(r % 255, g % 256, b % 256);
   background(r % 256, g % 256, b % 256);
  for(int i = width; i >= 0; i -= 20) {
    for(int j = 0; j <= height; j += 20) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 60;

          ellipse(i, j, size + theta, size + theta);
    }
  }
  
  theta += (isIncreasingSize ? 1 : -1);
  
  if (r >= 255 || g >= 255 || b >= 255 || r <= 0 || b <= 0 || g <= 0) {
    beta = beta * -1; 
  }

  if(theta == 20 || theta == 0) isIncreasingSize = !isIncreasingSize;
  
  r += 5 * beta; g += 5 * beta; b += 5 * beta;
//  print(" r is " + r + " b is " + b + " g is "+ g + ";"); 
}



void setup()
{
   fullScreen();
   background(0);
   colorMode(HSB);
   noCursor();
   reset();
}

float cx, cy, x, y, r, px, py, theta;
float c = 0;

float rInc, thetaInc;
float dir = 1;
void reset()
{
   background(0);
   cx = width / 2;
   cy = height / 2;
   px = cx;
   py = cy;
   r = 5;
   rInc = random(2, 10);
   thetaInc = random(1, 5);
   dir = ((int) random(0, 2)) == 0 ? 1 : -1;
}

void draw()
{
  strokeWeight(2);
  x = cx + sin(theta) * r;
  y = cy + (cos(theta) * dir) * r;
  stroke((c ) % 255, 255, 255);
  
  line(px, py, x, y);
  r += rInc;
  theta += thetaInc;
  c += 1f;
  px = x;
  py = y;
  
  if (r >= 700)
  {
    delay(3000);
    reset();
  }
  
  if (keyPressed && key == ' ')
  {
    reset();
  }
  
  //noFill();
  //circle(x, y, 5);
 
  fill(0);
  noStroke();
  rect(5, 5, 600, 500);
  fill(255);
  textSize(50);
  //text("ti: " + thetaInc, 10, 90);
  //text("ri: " + rInc, 10, 130);
}

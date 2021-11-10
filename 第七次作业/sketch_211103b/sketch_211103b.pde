
int anzahlDerPunkte = 1000; 
int fuellStand = 0;       
 
float[] xPos = new float[anzahlDerPunkte];
float[] yPos = new float[anzahlDerPunkte];;
float[] radius = new float[anzahlDerPunkte];;
 
 
 
void setup() {
  size(1440, 900);
  smooth();
 

  xPos[0] = width / 2;
  yPos[0] = height / 2;
  radius[0] = 10;
 

  fuellStand = fuellStand + 1;
}
 
 
void draw() {
 
  background(#57385c);
  noStroke();
  fill(#ffedbc);
 
  if (fuellStand < xPos.length) {
    addPoint();
  }
  drawPoint();
}
 
void drawPoint() {

  int index = 0;
  while (index < fuellStand) {
 
    ellipse(xPos[index], yPos[index], 2 * radius[index], 2 * radius[index]);
    index = index + 1;
  }
}
 
void addPoint() {
  float newR = random(1, 10);
  float newX = random(newR, width-newR);
  float newY = random(newR, height-newR);

  int closestIndex = getIndexOfClosestEllipse(newX, newY);

  float angle = atan2(newY - yPos[closestIndex], newX - xPos[closestIndex]);
 

  float noIntersectionDistance = newR + radius[closestIndex];

  newX = xPos[closestIndex] + cos(angle) * noIntersectionDistance * 0.8;
  newY = yPos[closestIndex] + sin(angle) * noIntersectionDistance * 0.8;
 

  xPos[fuellStand] = newX;
  yPos[fuellStand] = newY;
  radius[fuellStand] = newR;

  fuellStand = fuellStand + 1;
}

int getIndexOfClosestEllipse(float x, float y) {
  

  int closestIndex = 0;

  float closestDist = dist(x, y, xPos[0], yPos[0]);
  
 
  // which circle is the closest?
  int i = 1;
  while (i < fuellStand) {
    float distance = dist(x, y, xPos[i], yPos[i]);
    if (distance < closestDist) {
      closestDist = distance;
      closestIndex = i;
    }
    i = i + 1;
  }
  

  return closestIndex;
}
 
void mousePressed() {
  xPos[0] = mouseX;
  yPos[0] = mouseY;
  radius[0] = 10;
  fuellStand = 1;
}

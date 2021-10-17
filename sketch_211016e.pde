Ball b;
  PFont myFont ;

void setup() {
  fullScreen(P3D);
  b = new Ball(width / 2, height / 2, 500);
  myFont = createFont("Arial",128);
  textFont(myFont);

}

void draw() {
  background(255);
  update();
  display();
}

class Ball{
    int [] colors = {#c0c0c0,#868686, #777777, #3c3c3c, #1f1f1f, #000000};
    Ball(float x, float y, float _r) {
    location = new PVector(x, y, -_r);

    r = _r;

    startAngle = 0;
    angleVelocity = -0.1;
  }
}
  PVector location;

  float r, startAngle, angleVelocity;
  void update() {
    startAngle += angleVelocity;
  }
  void display() {
    translate(location.x, location.y, location.z);
    fill(0);
    textSize(16);
    textAlign(CENTER);
    float step = 8; 
    float offset = step / 2;// 
    for (int i = 0; i < 360; i+=step) {
      offset *= -1;
      for (int j = -90; j < 90; j+=step) {

        float theta1 = radians(i + startAngle), theta2 = radians(j + offset);
        float x = r * cos(theta2) * cos(theta1);
        float y = r * sin(theta2);
        float z = r * cos(theta2) * sin(theta1);
        if (mousePressed == false &&z>0)
         text("giao!", x, y, z);
        if (mouseButton == LEFT && z>0)
         text("wow!", x, y, z);
        if (mouseButton == RIGHT && z>0)
         text("ABA", x, y, z);
         if (mouseButton == CENTER && z>0)
         text("emmmm", x, y, z);
      }
    }
  }

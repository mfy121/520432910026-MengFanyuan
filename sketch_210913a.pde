color c = color(random(255),random(255),random(255));
color d = color(random(255),random(255),random(255));
color e = color(random(255),random(255),random(255));
color f = color(random(255),random(255),random(255));
color g = color(random(255),random(255),random(255));
color h = color(random(255),random(255),random(255));
color i = color(random(255),random(255),random(255));
color j = color(random(255),random(255),random(255));
float x = 0;
float y = 50;
float z;
float speed = 15;

void setup() {
  size(800,800);
  noStroke();
}

void draw() {
  background(0);
  move();
  display();
  
}

void move() {
  x = x + speed;
  z = 800-x;
  if (x>1200) {
    x = 0;
  }

}

void display() {
fill(c);
  rect(x,y,50,20);
fill(d);
  rect(x+50,y+100,50,20);
fill(e);
  rect(x+100,y+200,50,20);
fill(f);
  rect(x+150,y+300,50,20);
fill(g);
  rect(x+200,y+400,50,20);
fill(h);
  rect(x+250,y+500,50,20);
fill(i);
  rect(x+300,y+600,50,20);
fill(j);
  rect(x+350,y+700,50,20);
fill(c);
  rect(x+150,y,50,20);
fill(d);
  rect(x+200,y+100,50,20);
fill(e);
  rect(x+250,y+200,50,20);
fill(f);
  rect(x+300,y+300,50,20);
fill(g);
  rect(x+350,y+400,50,20);
fill(h);
  rect(x+400,y+500,50,20);
fill(i);
  rect(x+450,y+600,50,20);
fill(j);
  rect(x+500,y+700,50,20);
fill(c);
  rect(x-100,y,50,20);
fill(d);
  rect(x-150,y+100,50,20);
fill(e);
  rect(x-200,y+200,50,20);
fill(f);
  rect(x-250,y+300,50,20);
fill(g);
  rect(x-300,y+400,50,20);
fill(h);
  rect(x-350,y+500,50,20);
fill(i);
  rect(x-400,y+600,50,20);
fill(j);
  rect(x-450,y+700,50,20);
  
fill(c);
  rect(z,y,50,20);
fill(d);
  rect(z+50,y+100,50,20);
fill(e);
  rect(z+100,y+200,50,20);
fill(f);
  rect(z+150,y+300,50,20);
fill(g);
  rect(z+200,y+400,50,20);
fill(h);
  rect(z+250,y+500,50,20);
fill(i);
  rect(z+300,y+600,50,20);
fill(j);
  rect(z+350,y+700,50,20);
fill(c);
  rect(z+150,y,50,20);
fill(d);
  rect(z+200,y+100,50,20);
fill(e);
  rect(z+250,y+200,50,20);
fill(f);
  rect(z+300,y+300,50,20);
fill(g);
  rect(z+350,y+400,50,20);
fill(h);
  rect(z+400,y+500,50,20);
fill(i);
  rect(z+450,y+600,50,20);
fill(j);
  rect(z+500,y+700,50,20);
fill(c);
  rect(z-100,y,50,20);
fill(d);
  rect(z-150,y+100,50,20);
fill(e);
  rect(z-200,y+200,50,20);
fill(f);
  rect(z-250,y+300,50,20);
fill(g);
  rect(z-300,y+400,50,20);
fill(h);
  rect(z-350,y+500,50,20);
fill(i);
  rect(z-400,y+600,50,20);
fill(j);
  rect(z-450,y+700,50,20);
  fill(255,255,255);
  ellipse(mouseX,mouseY,20,20);
  }

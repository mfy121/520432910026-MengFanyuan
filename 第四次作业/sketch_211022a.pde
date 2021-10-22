boolean drawallow;
color couleur;
int b=1;
int a=1;
int x1,x2;
int y1,y2;

PFont myFont;
int mode=3;
void setup()
{
  frameRate(240);
  fill(180,180,255);
  strokeWeight(4);
  line(200,0,200,900);
  line(1440,0,1440,900);
  line(200,0,1440,0);
  line(200,900,1440,900);
  background(0);
  size(1600,900);
  myFont=createFont("Arial",64);

  smooth();
  colorMode(RGB);
  rectMode(CENTER);
  textSize(24);
  

  strokeWeight(0);
  fill(180,180,255);
  text("choose one color",12,40);
  fill(227, 23, 13); //red
  rect(45, 30+60, 60, 60); 
  fill(255, 97, 0);//orange
  rect(45, 110+60, 60, 60);
  fill(255,215,0);//yellow
  rect(45, 190+60, 60, 60); 
  fill(50,205,50); //green
  rect(45, 270+60, 60, 60);
  fill(64,224,208); //blue
  rect(45, 350+60, 60, 60);
  fill(65,105,225); //indigo
  rect(45, 430+60, 60, 60);
  fill(218,112,214);//purple
  rect(45, 510+60, 60, 60);
  fill(180,180,255);
  textSize(24);
  text("choose one style",12,680);
  fill(255,255,255);
  ellipse(45,750,60,60);
  fill(122,122,122);
  ellipse(45,830,60,60);
  strokeWeight(1);
  
  
}
void draw()
{
     colormode();
     drawmodejudge();
     drawmode();
     drawspacejudge();
     x1=mouseX;
     y1=mouseY;
     position(x1,y1);
        
}

void colormode()
{

  if(mouseX>15 && mouseX<75 && mouseY>60  && mouseY<120) 
  { 
    if(mousePressed)
    {
     couleur = color(227, 23, 13);
     a=0;
    }  
  }
  if(mouseX>15 && mouseX<75 && mouseY>140 && mouseY<200) 
  {
    if(mousePressed)
    {
      couleur = color(255, 97, 0);
      a=0;
    }
  }
  if(mouseX>15 && mouseX<75 && mouseY>220 && mouseY<280) 
  {
    if(mousePressed)
    {
      couleur = color(255,215,0);
      a=0;
    }
  }
  if(mouseX>15 && mouseX<75 && mouseY>300 && mouseY<360) 
  {
    if(mousePressed)
    {
     couleur = color(50,205,50);
     a=0;
    }
  }
  if(mouseX>15 && mouseX<75 && mouseY>380 && mouseY<440) 
  {
    if(mousePressed)
    {
     couleur = color(64,224,208); 
     a=0;
    }
  }
  if(mouseX>15 && mouseX<75 && mouseY>460 && mouseY<520) 
  {
    if(mousePressed)
    {
     couleur = color(65,75,225);
     a=0;
    }
  }
  if(mouseX>15 && mouseX<75 && mouseY>540 && mouseY<600) 
  {
    if(mousePressed)
    {
     couleur = color(218,112,214);
     a=0;
    }
  }
 }

void drawmodejudge()
{

  if(mouseX>15 && mouseX<75&& mouseY>720 && mouseY<780)
  {
    if(mousePressed)
    mode=1;
    b=0;
  }
  else if(mouseX>15 && mouseX<75 && mouseY>800 && mouseY<860)
  { if(mousePressed)
    mode=2;
    b=0;
  }
 }

void drawspacejudge()
{

  if(a==0 && b==0)  
{
     drawallow = true; 
}
  else
{
     drawallow = false;
}

}
void drawmode()
{
if (mode==1)
{
stroke(couleur);
line(860,0,860,900);  
}
else if (mode==2)
{ 
stroke(couleur);
line(860,0,860,900);
line(200,450,1440,450);
}
}
//mid point  860 450
void position(int x,int y)
{
  
x2 = 1440-x1+280;
y2 = 900-y1;

}

void mouseDragged()
{
fill(couleur);
noStroke();
if(drawallow == true)
{
  if(mode==2)
 {
  ellipse(x1,y1,5,5);
ellipse(x1,y2,5,5);
ellipse(x2,y1,5,5);
ellipse(x2,y2,5,5);
 }
else if(mode==1)
 {
 ellipse(x1,y1,5,5);
 ellipse(x2,y1,5,5);
 }
}
}

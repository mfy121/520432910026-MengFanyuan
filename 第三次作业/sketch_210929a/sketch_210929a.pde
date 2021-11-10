
int bgWidth = 900;
int bgHeight = 900;
float lineSize = 0;
float colSize = 0;

color[] colors = {#C6E2FF, #B9D3EE, #6C7B8B, #9FB6CD, #6E7B8B};
//Define the fill color

void mondrianStyle() {
  for(int line = 0; line < bgHeight; line += lineSize + 1) {
    lineSize = random(100, random(bgWidth/3,bgWidth/5));
    for(int col = 0; col < bgWidth; col += colSize + 1) {
      colSize = random(100, random(bgHeight/3,bgHeight/6));
 // Define the color block size  

      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);
      //Drawing color blocks

      strokeWeight(4);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, bgWidth, y);
      line(x, line, x, y);
      //Drawing Black lines
    }
  }
}

void setup() {
  size(900,900);
  background(#ffffff);
  mondrianStyle(); 
  //First run
}

void draw() {
  if (mousePressed){
        mondrianStyle();
  }
//Regenerate when the mouse is clicked
}

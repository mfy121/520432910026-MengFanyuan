PVector mouse;
Particle[]pts;

void setup(){  
  size(1280,720,P2D);
  
  pts=new Particle[10000];
  for(int i=0;i<pts.length;i++){
    pts[i]=new Particle();
  }
  
  mouse=new PVector(0,0);
}

void draw(){
  fill(0,20);
  stroke(0);
  rect(0,0,width,height);
  
  mouse.set(mouseX,mouseY);

  for(int i=0;i<pts.length;i++){
    pts[i].update();
  }
}

class Particle{
  PVector prevPos;
  PVector pos;
  PVector vel;  
  float factor=random(0.3, 1.5);  
  color col;
  
  Particle(){    
    pos=new PVector(random(width),random(height));
    prevPos=pos.copy();    
    vel=new PVector(0,0);
    col=color(random(180),random(140),200,30);
  }
  
  void update(){    
    float d2m = PVector.dist(pos,mouse);
    d2m*=0.1;
    
    PVector dist_acc=PVector.sub(mouse,pos);
    dist_acc.mult(factor*0.002);     
    vel.add(dist_acc);  
        
    float noise_x=noise(pos.x*0.05,pos.y*0.05,frameCount*0.001)-0.5;
    float noise_y=noise(pos.x*0.05,pos.y*0.05+20000,frameCount*0.001)-0.5;
    PVector noise_acc=new PVector(noise_x,noise_y);    
    noise_acc.mult(3);   
    vel.add(noise_acc);
    vel.mult(0.65);
      
    prevPos=pos.copy();  
    prevPos.add(PVector.div(vel,10));
    pos.add(vel);
     
    stroke(col); 
    line(pos.x,pos.y,prevPos.x,prevPos.y);    
  }
}
    
  

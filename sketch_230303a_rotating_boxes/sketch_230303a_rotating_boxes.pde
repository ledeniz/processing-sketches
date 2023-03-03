int rX = 0;
int rY = 0;
int rZ = 0;

int step = 30;

float r = 0;

float randomColorValue = 0;

void setup() {
  size(640, 640, P3D);
  
  rX = width;
  rY = width;
  rZ = width;
  
  //noStroke();
  noFill();
  
    frameRate(60);
}

void initRect() {
  rX = width;
  rY = width;
  rZ = width;
}

void draw() {
  background(0, 0, 0);

  initRect();
  
  
  translate(width/2, width/2, 100);
    rotateX(r);
    rotateY(r);
    rotateZ(r);
  
  for (int i=0; i<32; i++) {
    
    box(rX, rY, rZ);

    randomColorValue = random(100, 255);
    stroke(randomColorValue -100, 200, randomColorValue - 10);
  

    rX -= step;
    rY -= step;
    rZ -= step;
  }
  
  if (r > 360) {
    r = 0;
  } else {
    r += 0.01;
  }
 
  beginCamera();
camera();
translate(0, 0, -1000);
endCamera();
}

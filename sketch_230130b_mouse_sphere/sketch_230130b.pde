int iX = 0;
int iY = 0;

void setup() {
  size(640, 640, P3D);
  
  noStroke();
  
  background(0);
}

void draw() {
  if (iX > width) { iX = 0; } else { iX++; }
  if (iY > height) { iY = 0; } else { iY++; }
  
  lights();
  background(0);
  noStroke();
  
  ambientLight(255, 255, 255);
  ambient(mouseX, mouseY, mouseX);
  
  translate(width/2, height/2, 0);
  fill(255);
  sphere(120);


  fill(0, 0, 0, (map(mouseY, 0.0, ((float) height), 0.0, 1)));
  rect(width/2, height/2, width, height);
  
  delay(1);
}

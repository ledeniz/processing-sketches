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
  
  directionalLight(153, 153, 153, .5, 0, -1);
  ambientLight(mouseX, mouseY, mouseX);
  ambient(51, 26, 110);
  
  translate(width/4, height/4, 0);
  fill(255);
  sphere(520);


  fill(0, 0, 0, (map(mouseY, 0.0, ((float) height), 0.0, 1)));
  rect(width/2, height/2, width, height);
  
  delay(1);
}

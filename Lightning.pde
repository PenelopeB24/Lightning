float x, y, prevX, prevY;
float inc = 3;
void setup() {
  background(0);
  size(400, 600);
  strokeWeight(2);
}
void draw() {
  //ellipse(50, 50, 50, 50);
}
void createLightning() {
  x = width/2;
  y = 0;
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (y <= height) {
    fill(255, 0, 0, 200);
    prevX = x;
    prevY = y;
    // ellipse(x, y, 1, 1);
    x += inc*((int)(Math.random()*3)-1);
    y += inc*((int)(Math.random()*8)-2);
    line(prevX, prevY, x, y);
  }
}
void mouseClicked() {
  createLightning();
}

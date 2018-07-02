int moveY;
int x;
int y;

void setup() {
  size(1080, 1920);
  moveY = 1000;
  x = width/2;
  y = 0; 
}
void draw() {
  background(100);
  y = y + moveY / 100;
  ellipse (x, y, 50, 50);
  println(moveY);
  if (y > height - 25) {
    moveY = moveY * -1;
    y = height - 25;
  } else if (moveY >= 0){
    moveY = moveY + 10;
  } else if (moveY < 0) {
    moveY = moveY + height / 130;
  }
}  
void mousePressed() {
  moveY = 1000; 
  x = width/2;
  y = 0;
}

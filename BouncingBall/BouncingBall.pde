int x;
int xSpeed;  
int y;
int ySpeed;


void setup() {
  size (400, 400);
  x = 30;
  xSpeed = 15;
  y = 25;
  ySpeed = 20;
  
}

void draw() {
  x += xSpeed;
  y += ySpeed;
  
  if (x >= 375 || x <= 25)
    xSpeed = -xSpeed;
   if (y <= 25 || y >= 375)
     ySpeed = -ySpeed;
    
  

  background(255);
  
  noStroke();
  fill(255, 160, 122);
  
  ellipse(x, y, 50, 50);

}
  

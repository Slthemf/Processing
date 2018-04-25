PVector[] leaves;
PVector[] fallingLeaves;

void setup() {
  size(800,600);
 
  fallingLeaves = new PVector[10];
  for (int i = 0; i < fallingLeaves.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    fallingLeaves[i] = new PVector(x, y);
  }
}

void draw() {
  background(190, 212, 216);
  noStroke();
  fill(169, 221, 159);
  triangle(0, 532, 151, 583, 310, 419);
  triangle(310, 419, 450, 594, 800, 600);
  quad(0, 530, 0, 600, 143, 600, 151, 581);
  
  fill(130, 125, 137);
  triangle(310, 419, 144, 595, 450, 594);
  
  fill(178, 136, 76);
  triangle(0, 464, 0, 529, 310, 419);
  
  fill(56, 35, 7);
  quad(703, 450, 800, 438, 796, 375, 691, 352);
  quad(701, 408, 669, 549, 594, 521, 619, 416);
  triangle(701, 450, 686, 460, 701, 416);
  quad(483, 129, 498, 153, 680, 21, 654, 27);
  quad(447, 468, 485, 481, 469, 412, 420, 379);
  quad(471, 414, 391, 357, 345, 288, 466, 396);
  strokeWeight(30);
  stroke(56, 35, 7);
  line(620, 416, 455, 108);
  line(523, 242, 286, 141);
  strokeWeight(15);
  line(352, 177, 92, 209);
  line(689, 448, 745, 220);
  line(561, 276, 767, 114);
  line(451, 399, 254, 309);
  stroke(79, 77, 75);
  strokeWeight(2);
  line(0, 481, 274, 422);
  line(0, 486, 283, 421);
  line (0, 502, 290, 422);
  
   
  for(int i = 0; i < fallingLeaves.length; i++) {
    if(fallingLeaves[i].y  > 450) {
      fallingLeaves[i].x = (int) random(0, width);
      fallingLeaves[i].y = 5;
    }
    fallingLeaves[i].add(0, 3);
    noStroke();
  
      fill(255);
      ellipse(fallingLeaves[i].x, fallingLeaves[i].y, 5, 10);
      ellipse(fallingLeaves[i].x, fallingLeaves[i].y, 5, 10);
      ellipse(fallingLeaves[i].x, fallingLeaves[i].y, 5, 10);
    
  }
  
 
 }

void mousePressed() {
  println(mouseX +"," +mouseY);
}

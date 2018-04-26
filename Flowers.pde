PVector[] snow;
PVector[] flowers;

void setup() {
  size(800,600);
 
 
  flowers = new PVector[10];
  flowers[0]=  new PVector(629, 432);
  flowers[1]=  new PVector(521, 244); 
  flowers[2]=  new PVector(496, 140); 
  flowers[3]=  new PVector(292, 183); 
  flowers[4]=  new PVector(293, 316); 
  flowers[5]=  new PVector(428, 389); 
  flowers[6]=  new PVector(699, 445);
  flowers[7]=  new PVector(735, 262);
  flowers[8]=  new PVector(752, 122); 
  flowers[9]=  new PVector(596, 75);
  snow = new PVector[10];
  for (int i = 0; i < snow.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    snow[i] = new PVector(x, y);
  }
  

}

void drawFlower(float flowerX, float flowerY) {
    pushMatrix();
      translate(flowerX, flowerY);
      for(int i = 0; i < 5; i++){
        if(i%2==0){
            fill(244, 215, 221);
            translate(9, 10);
            rotate(2*PI/5);
            ellipse(0, 0, 10, 20);
          }else{
            fill(232, 220, 222);
            translate(9, 10);
            rotate(2*PI/5);
            ellipse(0, 0, 10, 20);
         }
      }
    popMatrix();
}

void draw() {
  background(190, 212, 216);
  noStroke();
  fill(169, 221, 159);
  triangle(0, 532, 151, 583, 310, 419);
  triangle(310, 419, 450, 594, 800, 600);
  quad(0, 530, 0, 600, 143, 600, 151, 581);
  
  fill(244, 251, 252);
  quad(0, 533, 0, 600, 302, 421, 148, 592); 
  triangle(313, 425, 450, 593, 764, 588);
  
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
  quad(425, 362, 446, 378, 503, 287, 584, 236);
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
  strokeWeight(1);
  line(657, 206, 670, 141);
  
  for(int i = 0; i < flowers.length; i++) {
    drawFlower(flowers[i].x, flowers[i].y);
  }
  
   
  for(int i = 0; i < snow.length; i++) {
    if(snow[i].y > 510) {
      snow[i].x = (int) random(0, width);
      snow[i].y = 5;
    }
    snow[i].add(0, 3);
    noStroke();
      fill(255);
      ellipse(snow[i].x, snow[i].y, 10, 10);
      ellipse(snow[i].x, snow[i].y, 10, 10);
      ellipse(snow[i].x, snow[i].y, 10, 10);
  }
 }

void mousePressed() {
  print("new PVector(" + mouseX + ", " + mouseY +"), ");
}

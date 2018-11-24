//General veriables
float a, b, c;
float pi = 3.14;

//setup runs once 
void setup() {
  a = 0;
  b = 0;
  c = 0;
  size(600, 600);
  background(120);
  //ellipse(width/2, height/2, 300, 300);
}

//draw runs 60 per minutes
void draw() {
  background(20);
  a = a + 0.01;
  b = b + 0.05;
  c = c + 0.02;
  //stroke(255, 30);
  noStroke();
  fill(255, 20, 20, 90);
  ellipse(300 + 20*cos(b + pi/4), 300 + 20*sin(b + pi/4), 50*sin(b + pi/4), 50*sin(b + pi/4));
  ellipse(300 + 20*cos(b + 3*pi/4), 300 + 20*sin(b + 3*pi/4), 50*sin(b + 3*pi/4), 50*sin(b + 3*pi/4));
  ellipse(300 + 20*cos(b + 5*pi/4), 300 + 20*sin(b + 5*pi/4), 50*sin(b + 5*pi/4), 50*sin(b + 5*pi/4));
  ellipse(300 + 20*cos(b + 7*pi/4), 300 + 20*sin(b + 7*pi/4), 50*sin(b + 7*pi/4), 50*sin(b + 7*pi/4));

  fill(255, 200, 20, 30);
  //ellipse(mouseX, mouseY, 100, 100);
  serieRound(8, 300, 300, 150, 50, 0);
  //{
    //ellipse(300 + 80*cos(c + pi/4), 300 + 80*sin(c + pi/4), 50*cos(a + pi/8) + 100, 50*cos(a + pi/8) + 100);
    //ellipse(300 + 80*cos(c + pi/2), 300 + 80*sin(c + pi/2), 50*cos(a + pi/4) + 100, 50*cos(a + pi/4) + 100);
    //ellipse(300 + 80*cos(c + 3*pi/4), 300 + 80*sin(c + 3*pi/4), 50*cos(a + 3*pi/8) + 100, 50*cos(a + 3*pi/8) + 100);
    //ellipse(300 + 80*cos(c + pi), 300 + 80*sin(c + pi), 50*cos(a + pi/2) + 100, 50*cos(a + pi/2) + 100);
    //ellipse(300 + 80*cos(c + 5*pi/4), 300 + 80*sin(c + 5*pi/4), 50*cos(a + 5*pi/8) + 100, 50*cos(a + 5*pi/8) + 100);
    //ellipse(300 + 80*cos(c + 6*pi/4), 300 + 80*sin(c + 6*pi/4), 50*cos(a + 3*pi/4) + 100, 50*cos(a + 3*pi/4) + 100);
    //ellipse(300 + 80*cos(c + 7*pi/4), 300 + 80*sin(c + 7*pi/4), 50*cos(a + 7*pi/8) + 100, 50*cos(a + 7*pi/8) + 100);
    //ellipse(300 + 80*cos(c + 2*pi), 300 + 80*sin(c + 2*pi), 50*cos(a + pi) + 100, 50*cos(a + pi) + 100);
  //}
}

//draw a serie of rounds
void serieRound(int n, int pos_x, int pos_y, int speed, int scale, int b_scale) {
  for (int i = 0; i < 2*n; i++) {
    ellipse(pos_x + speed*cos(c + i*pi/n)*(sin(c) + 2)/3, pos_y + speed*sin(c + i*pi/n)*(cos(c) + 2)/3, scale + b_scale, scale + b_scale);
    //ellipse(pos_x + speed*cos(c + i*pi/n), pos_y + speed*sin(c + i*pi/n), scale*cos(a + pi/n) + b_scale, scale*cos(a + pi/n) + b_scale);
  }
}

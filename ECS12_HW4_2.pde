
int count = 0;
void setup()
{
  size(800, 800);
  smooth();
  //noLoop();
  //frameRate(0);
}

void draw()
{

  background(255);   
  strokeWeight(5);
  for (int x = 0; x<=725; x+=125) {
    for (int y = 0; y<=725; y+=125) {
      pushMatrix();
      
      translate(random(60,122)+x, random(60,122)+y); 
      drawAnimal();
      popMatrix();
    }
  }
  noLoop();
}

void drawAnimal() {
  float body_x = random(68, 82); //75
  float body_y = random(43, 57); //50
  float eyes = random(-2,2);
  float direction = random(-3, 1);
  float head_x = 0;
  float tail_x = 0;
  float spot_x = 1;
  if(direction >= 0){
    spot_x = -1;
    tail_x = -body_x+12;
    head_x = body_x-18;
  }
  
  //REAR LEFT LEG
  ellipse(-22, 18, 17, 30);
  //REAR RIGHT LEG
  ellipse(7, 15, 17, 30);
  if(direction >= 0){
  strokeWeight(2);
  ellipse(-3+head_x, -22, 15, 8);
  ellipse(-47+head_x, -22, 15, 8); 
  strokeWeight(5);
  ellipse(-25+head_x, -10, 35, 48);
  }
  //BODY
  ellipse(0, 0, body_x, body_y);
  //TAIL
  if(direction < 0){
  ellipse(36, 7, 2, 22);
  }
  //NEAR LEFT LEG
  ellipse(-7, 20, 17, 30);
  //NEAR RIGHT LEG
  ellipse(23, 17, 17, 30);
  //WHITE ELLIPSE TO REMOVE LEG LINES
  stroke(255);
  ellipse(0, 0, body_x - 10, body_y - 10);
  stroke(0);
  //SPOTS
  fill(0);
  ellipse( spot_x*random(0, 15), random(-15, 5), random(12, 20), random(12, 20) );
  fill(255);
  //HEAD
  if(direction < 0){
  ellipse(-25, -10, 35, 48);
  }
  //NOSE
  if(direction < 0){
  fill(#FF9999);
  ellipse(-25, 0, 40, 23);
  fill(255);
  //NOSE HOLES
  stroke(#6B4040);
  ellipse(-17, 0, 7, 4);
  ellipse(-33, 0, 7, 4);  
  stroke(0);
  //EYES
  strokeWeight(2);
  ellipse(-32, -20, 8, 5);
  ellipse(-19, -20, 8, 5);
  fill(0);
  ellipse(-32+eyes, -20, 1, 1);
  ellipse(-19+eyes, -20, 1, 1);
  fill(255);
  //EARS
  ellipse(-3, -22, 15, 8);
  ellipse(-47, -22, 15, 8); 
  strokeWeight(5);
  }
  //TAIL
  if(direction >= 0){
  ellipse(36+tail_x, 7, 2, 28);
  }
}


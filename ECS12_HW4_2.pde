
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
  float body_x = random(68, 82); //Varies body length
  float body_y = random(43, 57); //Varies body width
  float eyes = random(-2,2); //Changes direction of eyes
  
  float direction = random(-3, 1);
  float head_x = 0;
  float tail_x = 0;
  float spot_x = 1;
  if(direction >= 0){
    spot_x = -1;
    tail_x = -body_x+12;
    head_x = body_x-18;
  }
  

  color[] c = { color(74,32,32), color(70,70,70), color(0,0,0), color(95,25,0), color(84,40,25) };
  int index = (floor(random(0, 5)));
  color col = c[index];
  
  //REAR LEFT LEG
  ellipse(-22, 18, 17, 30);
  
  //REAR RIGHT LEG
  ellipse(7, 15, 17, 30);
  
  //ONLY BACKWARDS FACING
  if(direction >= 0){
  //BACKWARD EARS
  strokeWeight(2);
  ellipse(-3+head_x, -22, 15, 8);
  ellipse(-47+head_x, -22, 15, 8); 
  strokeWeight(5);
  
  //BACKWARD HEAD
  ellipse(-25+head_x, -10, 35, 48);
  }//END BACKWARDS FACING
  
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
  fill(col);
  stroke(col);
  ellipse( spot_x*random(3, 13), random(-10, 5), random(12, 20), random(12, 20) );
  fill(255);
  stroke(0);
  
  //HEAD
  if(direction < 0){
  ellipse(-25, -10, 35, 48);
  }
  
  //ONLY ON FRONT FACING
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
  }//END FRONT FACING
  
  //BACKWARDS TAIL
  if(direction >= 0){
  ellipse(36+tail_x, 7, 2, 28);
  }
}


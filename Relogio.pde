void setup() {
  size(600, 600);
  smooth();
  noStroke();
}

void draw(){
  translate(width/2,height/2);
  ellipse(0,0,540,540);
  float raio1 = 270;
  for(int i=0;i<60;i++){
    float seg = (PI/30*second())-PI/2;
    float min = (PI/1800*(minute()*60+second()))-PI/2; 
    float hora = (PI/21600*((hour()*3600 + minute()*60 + second()))) - PI/2;
  
    if(i%5 == 0){
      stroke(255,0,0);
      line((raio1*0.95)*cos(TWO_PI/60*i),(raio1*0.95)*sin(TWO_PI/60*i),(raio1*0.75)*cos(TWO_PI/60*i),(raio1*0.75)*sin(TWO_PI/60*i));
    }
    
     if(i%5 != 0){
      stroke(0,0,0);
      line((raio1*0.925)*cos(TWO_PI/60*i),(raio1*0.925)*sin(TWO_PI/60*i),(raio1*0.825)*cos(TWO_PI/60*i),(raio1*0.825)*sin(TWO_PI/60*i));
    }
    
    stroke(255,0,0);
    line(0,0,(raio1*0.75)*cos(seg),(raio1*0.75)*sin(seg));
    stroke(0,0,0);
    line(0,0,(raio1*0.65)*cos(min),(raio1*0.65)*sin(min));
    line(0,0,(raio1*0.45)*cos(hora),(raio1*0.45)*sin(hora));
  }
}

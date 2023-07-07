float x , y , d ;
float a , b , c ;
float m , n , o ; 
float e , f , g ; 
float r , s , t ;
float u , v , w ;
float h , i , j ;
float x0 , y0 , d0 ;
float x1 , y1, d1 ;
float x2 , y2 , d2;
float x3 , y3 , d3;
float x5 , y5 , d5;
float x6 , y6 , d6;

Drop[] drops = new Drop[60];
  void setup (){
  size (1200,900);
    for (int i = 0; i < drops.length; i++) {
      drops[i] = new Drop ();
  }
  
  x = 300 ;//snow
  y = 200 ;
  d = 100 ;
  
  a = 700;//for house
  b = 200;
  c = 85;
  
  m = 60;//school
  n = 150;
  o = 100;
  
  e = 500 ;//truck
  f = 700 ;
  g = 100 ;
  
  r = 450 ;//moon
  s = 200 ;
  t = 100;
  
  u = 700 ;//snowman
  v = 480 ;
  w = 50 ;
  
  x0 = 1000;//car
  y0 = 650;
  d0 = 60;
  
  x1 = 120; // aya
  y1 = 520;
  d1 = 50;
  
  x2 = 500; //star
  y2 = 245;
  d2 = 10;
  
  x3 = 300; //text
  y3 = 500;
  d3 = 10;
  
  x5 = 350; // pich
  y5 = 480;
  d5 = 20;
  
  x6 = 800; //roadhouse
  y6 = 500;
  d6 = 100;
  
  h = 500; //tree
  i = 300;
  j = 50; 
  
}

void draw (){
  background(75, 80, 137);
  
  //road
  noStroke();
  fill(0,20,64);
  rect(0,600,2500,200);
  
  house (a,b,c);  
  moon (r,s,t);
  school(m,n,o);
  snowman (u,v,w);
  truck (e,f,g);
  tree(h,i,j);
  taxi(x0,y0,d0);
  aya(x1,y1,d1);
  star(x2,y2,d2);
  text(x3,y3,d3);
  pich(x5,y5,d5);
  roadhouse(x6,y6,d6);
  snow (x,y,d);
  
  x+= 5 ;
  if (x>width) x = 0 ;
   
  y+= 10 ;
  if (y> height ) y = 0 ;

  e+= 5 ;
  if (e>width) e = 0 ;
 
  x0 -= 3;
  if (x0 >width ) x0 = 0;
  
   for (int i = 0; i < drops.length; i++){
    drops[i].fall();
    drops[i].show();
  }
}
void truck(float e , float f , float g ){
  
  /*road
  noStroke();
  fill(0,20,64);
  rect(e-14*g,f,g*25,2*g);
  fill(245);
  rect(e-14*g,f+2*g,g*25,2*g);*/
  
  strokeWeight (g*0.08);
  stroke(24, 27, 93);
  //back truck
  fill(67, 179, 127);
  rect (e,f,1.9*g,1.2*g,0.08*g);
  
  //front truck
  fill(251, 203, 4);
  beginShape();
  vertex (e+1.9*g,f+0.4*g);
  vertex(e+2.5*g,f+0.4*g);
  vertex(e+2.8*g,f+0.8*g);
  vertex(e+2.8*g,f+1.2*g);
  vertex(e+1.9*g,f+1.2*g);
  endShape(CLOSE);
  
  //mirror
  fill(91, 175, 228);
  beginShape();
  vertex(e+2.6*g,f+0.55*g);
  vertex(e+2.3*g,f+0.55*g);
  vertex(e+2.3*g,f+0.8*g);
  vertex(e+2.75*g,f+0.8*g);
  endShape(CLOSE);
  
  //wheel
  fill(148);
  circle(e+2.3*g,f+1.3*g,0.5*g);//front wheel
  circle(e+2.3*g,f+1.3*g,0.08*g);//in front wheel
  circle(e+0.6*g,f+1.3*g,0.5*g);
  circle(e+0.6*g,f+1.3*g,0.08*g);
  
  fill(24, 27, 93);
  textSize(0.3*g);
  text("J&T Express",e+0.23*g,f+0.68*g);

}
void house (float a , float b , float c){
 
  //middle house
 strokeWeight (c*0.07);
 stroke (40, 43, 99);
 fill(178, 172, 182);
 rect (a,b,2*c,2.2*c); 
 
 //line between house 
 line (a,b+1.1*c,a+2*c,b+1.1*c);
 
 //roof 
 fill(47, 60, 145);
 beginShape();
 vertex(a,b);
 vertex(a+0.3*c,b-0.8*c);
 vertex(a+1.7*c,b-0.8*c);
 vertex(a+2*c,b);
 endShape();
 
 //door
 rect (a+0.3*c, b+1.3*c,0.5*c, 0.9*c);
 line (a+0.2*c,b+2.15*c,a+0.9*c,b+2.15*c);//under door
 //line in roof
 line (a+0.4*c,b-0.25*c,a+0.8*c,b-0.25*c);
 line (a+1.3*c,b-0.25*c,a+1.6*c,b-0.25*c);
 line (a+0.68*c,b-0.5*c,a+1.3*c,b-0.5*c);
 
 //between roof and rect
 fill(96, 100, 191);
 rect(a-0.1*c,b,2.2*c,0.12*c);
 
  //top of roof 
 fill (96, 100, 191);
 beginShape();
 vertex(a+0.4*c,b-0.83*c);
 vertex(a+0.4*c,b-c);
 vertex(a+0.8*c,b-c);
 vertex(a+0.8*c,b-0.83*c);
 endShape();
  
  //window 
  rect(a+c, b+1.3*c,0.8*c,0.6*c);//near door
  rect(a+c, b+0.3*c,0.8*c,0.5*c);
  rect(a+0.3*c,b+0.3*c,0.5*c,0.5*c);
  
  //line under window
  line(a+0.25*c,b+0.8*c,a+0.85*c,b+0.8*c);//left window
  line(a+0.95*c,b+0.8*c,a+1.85*c,b+0.8*c);//right window
  line(a+0.95*c,b+1.9*c,a+1.85*c,b+1.9*c);//down
  
  //line in window
  strokeWeight (0.02*c);
  line(a+c,b+1.45*c,a+1.8*c,b+1.45*c);//under window 
  line(a+1.2*c,b+1.3*c,a+1.2*c,b+1.9*c);//under window 
  line(a+1.6*c,b+1.3*c,a+1.6*c,b+1.9*c);//under window 
  
  line(a+c,b+0.45*c,a+1.8*c,b+0.45*c);//right window
  line(a+1.2*c,b+0.35*c,a+1.2*c,b+0.8*c);//right window 
  line(a+1.6*c,b+0.35*c,a+1.6*c,b+0.8*c);//right window 
  
  line(a+0.3*c,b+0.45*c,a+0.8*c,b+0.45*c);//left window 
  line(a+0.5*c,b+0.3*c,a+0.5*c,b+0.8*c);//left window
  
  fill (128,128,255);
  circle (a+0.45*c,b+1.7*c, 0.1*c);//dot in door
  
  strokeWeight (c*0.07);
  stroke (40, 43, 99);
  
  //left house
  fill(178, 172, 182);
  rect (a-1.5*c,b+1.1*c,1.5*c,1.1*c);//out
  fill (47, 60, 145);
  rect (a-1.3*c,b+1.3*c,1.1*c,0.9*c);//inner
  
  //line in inner
  line (a-1.1*c,b+1.6*c,a-0.9*c,b+1.6*c);
  line (a-0.6*c,b+1.6*c,a-0.4*c,b+1.6*c);
  line (a-1.1*c,b+1.95*c,a-0.9*c,b+1.95*c);
  line (a-0.6*c,b+1.95*c,a-0.4*c,b+1.95*c);
  
  //top of left house 
  fill(96, 100, 191);
  rect(a-1.6*c,b+c,1.6*c,0.12*c);
  
  //right house 
  fill(178, 172, 182);
  beginShape();
  vertex(a+2*c,b+0.5*c);
  vertex(a+3.5*c,b+c);
  vertex(a+3.5*c,b+2.2*c);
  vertex(a+2*c,b+2.2*c);
  endShape(CLOSE);
  
  //top of right house
  fill(96, 100, 191);
  beginShape();
  vertex(a+2*c,b+0.35*c);
  vertex(a+3.5*c,b+0.85*c);
  vertex(a+3.5*c,b+c);
  vertex(a+2*c,b+0.5*c);
  endShape(CLOSE);
  
  //window in right house
  rect(a+2.3*c, b+1.3*c,0.8*c,0.6*c);
  
  //line under it
  line(a+2.25*c,b+1.9*c,a+3.15*c,b+1.9*c);
  strokeWeight (0.02*c);
  line(a+2.3*c,b+1.45*c,a+3.1*c,b+1.45*c);//under right window 
  line(a+2.5*c,b+1.3*c,a+2.5*c,b+1.9*c);//under right window 
  line(a+2.9*c,b+1.3*c,a+2.9*c,b+1.9*c);//under right window 
  
  //white one on top of right house
  fill(200);
  strokeWeight (c*0.07);
  beginShape();
  vertex(a+2.4*c,b+0.45*c);
  vertex(a+3*c,b+0.25*c);
  vertex(a+3*c,b+0.65*c);
  endShape();
  
 }
 void school (float m , float n , float o){
   
  //school
  fill(200);
  stroke(65, 67, 66);
  strokeWeight(0.06*o);
  rect(m,n,3.5*o,2.4*o);
  
  //red one
  fill(255,90,90);
  rect (m-0.1*o,n,3.7*o,0.2*o);
  
  //window on top
  fill(91, 175, 228);
  rect (m+0.25*o,n+0.5*o,0.35*o,0.55*o,0.03*o);//1
  rect (m+0.85*o,n+0.5*o,0.35*o,0.55*o,0.03*o);//2
  rect (m+2.3*o,n+0.5*o,0.35*o,0.55*o,0.03*o);//3
  rect (m+2.9*o,n+0.5*o,0.35*o,0.55*o,0.03*o);//4
  
  //window under
  rect (m+0.25*o,n+1.4*o,0.35*o,0.55*o,0.03*o);//1
  rect (m+0.85*o,n+1.4*o,0.35*o,0.55*o,0.03*o);//2
  rect (m+2.3*o,n+1.4*o,0.35*o,0.55*o,0.03*o);//3
  rect (m+2.9*o,n+1.4*o,0.35*o,0.55*o,0.03*o);//4
  
  //middle mirror
  rect(m+1.35*o,n+0.5*o,0.8*o,0.25*o,0.03*o);
  
  //door
  rect(m+1.35*o,n+1.4*o,0.4*o,1*o,0.02*o);
  rect(m+1.75*o,n+1.4*o,0.4*o,1*o,0.02*o);
  
  //stairs
  fill(128);
  rect (m-0.1*o,n+2.2*o,3.7*o,0.2*o);//top
  rect (m-0.2*o,n+2.4*o,3.9*o,0.2*o);//under
  
  textSize(0.25*o);
  text("SCHOOL",m+1.32*o,n+1.1*o);
  
}

void snowman (float u , float v , float w ){
  strokeWeight(0.03*w);
fill(255);  
  stroke(0); 
  strokeWeight(0.03*w);
  //circle(u-w*2, v+w*7, w*12);
  //head
  ellipse(u-w*2, v+w, w*1.55, w*1.55);
  //body
  ellipse(u-2*w, v, w*1.20, w*1.20);
  ellipse(u-w*2, v-w*0.85, w*0.95, w*0.95);
  //buttons
  stroke(0);
  strokeWeight(w*0.05); 
  ellipse(u-w*2, v+w+2, w*0.2, w*0.2);
  ellipse(u-w*2, v+w*0.6, w*0.2, w*0.2);
  ellipse(u-w*2, v+w*0.13, w*0.2, w*0.2);
  //arms
  stroke(158, 124, 61);
  //strokeWeight(5);
  line(u-w*3.16, v-w*0.5,  u-2.6*w,v); 
  line(u-w*2.91, v-w*0.31, u-3.06*w, v-w*0.61); 
  line(u-w*0.87, v-w*0.47, u-w*1.4, v-w*0.04);  
  line(u-w*1.02, v-w*0.56, u-w*1.1, v-w*0.28); 

  //smile
  noFill();
  stroke(0);
  arc(u-w*2, v-w*0.7, w/2, w*0.3, 0, PI); 

  //eyes
  fill(0);
  circle(u-w*2.2, v-w, w/10);
  circle(u-w*1.8, v-w, w/10);

  //nose
  strokeWeight(0.03*w);
  fill(244, 138, 11);
  triangle(u-w*2, v-w*0.8, u-2*w, v-0.9*w, u-1.6*w, v-0.72*w); 

  //hat
  fill(0);
  noStroke();
  ellipse(u-w*2, v-w*1.2, w, w/10);
  square(u-w*2.3, v-w*1.8, w*0.60);

  //scarf
  noFill();
  noStroke();
  stroke(227, 137, 28);
  strokeWeight(w*0.15); // suh
  arc(u-w*2, v-w*0.55, 0.9*w, w*0.40, 0, PI);
  rect(u-w*1.65, v-w*0.4, w*0.08, w*0.6);
  /*
  //flakes
  stroke(255,255,255);
  strokeWeight(2);
  line(u-w*3.5,v-w*1.4,w*0.65,w*0.8); //.
  line(u-w*3.5,v-w*1.2,w*0.61,w*0.58); //..
  line(u-w*3.55,v-w*1.32,w*0.68,w*0.68); //l
  
  line(u-w*3.45,v-w*1.32,w*0.45,w*0.64); //l
  line(u-w*3.45,v-w*1.32,w*0.45,w*0.72); //l
  line(u-w*3.47,v-w*1.35,w*0.55,w*0.58); //.
  line(u-w*3.34,v-w*1.37,w*0.58,w*0.65); //..
  line(u-w*3.4, v-w*1.33,w*0.68,w*0.73); //r
  line(u-w*3.41,v-w*1.28,w*0.58,w*0.8); //.1
  line(u-w*3.45,v-w*1.28,w*0.45,w*0.78); //..1
  
  
  fill(255,255,255);
  circle(u-w,v-w*1.5,w/10);
  circle(u-w*0.5,v-w*1.3,w/10);
  circle(u-w*0.2,v,w/10);
  circle(u-w*3.5,v-w*0.5,w/10);
  circle(u-w*3.8,v,w/10);
  circle(u-w*3,v+w*0.5,w/10);
  circle(u-w*0.7,v+w*0.5,w/10);
  */
  //gift
  fill(166, 48, 48);
  stroke(0);
  strokeWeight(0.01*w);
  square(u-w,v+w,w*0.8);
  
  fill(166, 48, 48);
  rect(u-w*1.1,v+w,w,w*0.18);
  
  fill(71, 173, 75);
  rect(u-w*0.5,v+w,w/10,w*0.80);
  rect(u-w,v+w*1.5,w*0.81,w/10);
  
  }
  
  void moon(float r , float s , float t){
  
  //moon
  stroke(0);
  strokeWeight(0.03*t);
  fill(245, 176, 10);
  beginShape();
  vertex(r-t*3.7,s-t*1.8);
  bezierVertex(r-t*3.2,0,r-t*3.2,s-t*1.25,r-t*3.7,s-t*1.25);
  bezierVertex(r-t*3.5,s-t*1.2,r-t*3.4,s-t*1.75,r-t*3.7,s-t*1.8);
  endShape();

}

void snow (float x , float y , float d ){
    
  //snow 
  fill (255);
  noStroke();
  circle (x,y,d*0.15); 
  circle (x+2.5*d,y+3*d,d*0.12);
  circle (x-2.5*d,y+2*d,d*0.15);
  circle (x+5*d,y-d,d*0.12);
  circle (x+6.7*d,y+5*d,d*0.12);
  circle (x+0.5*d,y+5.5*d,d*0.15);
  circle (x+2.5*d,y-1.9*d,d*0.15);
  circle (x-2.5*d,y-1.5*d,d*0.12);
  circle (x+3.3*d,y+0.5*d,d*0.12);
  circle (x+5.8*d,y+1.5*d,d*0.12);
  circle (x-2.5*d,y+4.5*d,d*0.12);
}
class Drop {
  float k = random(width);
  float l = random (-200,-100);
  float yspeed = random (2,10);
  
void fall () {
    l = l + yspeed;
    if( l > height) l = random (-200,-100);
  }
  void show () {
    stroke (255);
    line(k,l,k,l+10);
  }
}
void star (float x2, float y2, float d2){
  fill(252, 250, 3);
  //stroke(0,0,0);
  //strokeWeight(0.1*d);
  noStroke();
  beginShape();
  // star right
  vertex(x2,y2-2.3*d2);
  vertex(x2+0.45*d2,y2-0.95*d2);
  vertex(x2+2*d2,y2-0.9*d2);  
  vertex(x2+0.75*d2,y2-0.15*d2);
  vertex(x2+1.2*d2,y2+1.2*d2);  
  // star left
  vertex(x2,y2+0.3*d2); 
  vertex(x2-1.3*d2,y2+1.2*d2);
  vertex(x2-0.8*d2,y2-0.15*d2);  
  vertex(x2-2*d2,y2-0.9*d2);  
  vertex(x2-0.5*d2,y2-0.9*d2);
  endShape(CLOSE);
}
void aya(float x1, float y1, float d1){
//right arm 
fill(237, 130, 199);
noStroke();
ellipse(x1-10,y1-d1*1.1,d1*0.6,d1);
//left arm 
noStroke();
ellipse(x1-d1*1.5,y1-d1*0.3,d1,d1*0.6);
//right leg
noStroke();
fill(201, 56, 70);
ellipse(x1,y1+d1*0.5,d1,d1*0.6);
//left leg
ellipse(x1-d1*1.3,y1+d1*0.5,d1,d1*0.6);
//head
noStroke();
fill(237, 130, 199);
circle(x1-d1*0.7,y1-d1*0.4,d1*1.8);
//eyes
strokeWeight(2);
stroke(0);
fill(55, 66, 196);
ellipse(x1-d1,y1-d1*0.8,d1*0.15,d1*0.35); //left
ellipse(x1-d1*0.5,y1-d1*0.8,d1*0.15,d1*0.35); //right
fill(0);
ellipse(x1-d1,y1-d1*0.85,d1*0.12,d1*0.21); //left01
ellipse(x1-d1*0.5,y1-d1*0.85,d1*0.12,d1*0.21); //right01
fill(255);
noStroke();
ellipse(x1-d1,y1-d1*0.9,d1*0.1,d1*0.13); //left01
ellipse(x1-d1*0.5,y1-d1*0.9,d1*0.1,d1*0.13); //left02

//mouth
fill(133, 37, 50);
arc(x1-d1*0.75,y1-d1*0.4,d1*0.3,d1*0.4,0,PI); //1st
fill(201, 56, 70);
ellipse(x1-d1*0.75,y1-d1*0.27,d1*0.2,d1*0.12);

//blush
fill(237, 78, 224);
ellipse(x1-d1*1.2,y1-d1*0.5,d1*0.2,d1*0.1);
ellipse(x1-d1*0.3,y1-d1*0.5,d1*0.2,d1*0.1);

}
void text (float x3, float y3, float d3){
  textSize (15);
  text("My Package", x3-d3*8.5, y3-d3*1.5, d3*3);
  stroke(255);
  noFill();
  circle (x3-d3*15,y3,d3*1.5); // small
  circle (x3-d3*12,y3-d3,d3*3);  // big
  ellipse( x3-d3*5,y3-d3*2,d3*10,d3*7.5); // bigger
}
void pich (float x5, float y5, float d5){
   stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  //bear-face
  fill (192, 118, 63);
  stroke(69, 43, 23);
  arc(x5, y5, 3*d5, 2.8*d5, -1*PI/8, 4*PI/3, OPEN);
  //green-body
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.5*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5+0.35*d5, y5+4*d5);//nineteen
  vertex(x5+3*d5, y5+4*d5);//twenty
  vertex(x5+3*d5, y5+1.7*d5);//twenty-one
  vertex(x5+2.5*d5, y5+1.15*d5);//twenty-two
  endShape();
  //green-one
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*1.4, y5-d5);//one
  vertex(x5-d5*1.1, y5-d5*2);//two
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  endShape(CLOSE);
  //green-two
  beginShape();
  vertex(x5-d5*1.1, y5-d5*2.01);//from-two
  vertex(x5+d5*2.2, y5-d5*1.9);//five
  vertex(x5+d5*2.4, y5-1.6*d5);//six
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  endShape(CLOSE);
  //green-three
  beginShape();
  vertex(x5+d5*2.4, y5-1.56*d5);//six
  vertex(x5+d5*2.8, y5-d5*0.85);//seven
  vertex(x5+d5*2.65, y5+d5*0.9);//eight
  vertex(x5+2.3*d5, y5+d5*1.25);//nine
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5+d5*1.45, y5+d5*0.45);//twelve
  vertex(x5+d5*1.45, y5-d5*0.2);//thirteen
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  vertex(x5+d5*0.6, y5-d5*1.66);//three
  endShape();
  //green-four
  beginShape();
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5-d5*1.5, y5+d5*0.65);//fourteen
  vertex(x5-d5*1.4, y5+d5*1.35);//fifteen
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  endShape();
  //bear-left-hand
  fill (192, 118, 63);
  ellipse(x5-d5, y5+1.8*d5, 1.4*d5, d5*0.8);
  //green-body-hide-hand
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.45*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  endShape();
  fill(127, 95, 57);
  noStroke();
  ellipse(x5-d5*1.26, y5+1.8*d5, 0.17*d5, 0.24*d5);
  circle(x5-d5*1.37, y5+1.6*d5, 0.12*d5);
  circle(x5-d5*1.5, y5+1.8*d5, 0.13*d5);
  circle(x5-d5*1.45, y5+2*d5, 0.1*d5);
  //light-body
  stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  fill(148, 188, 125);
  beginShape();
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5-d5, y5+4*d5);//twenty-three
  vertex(x5+0.35*d5, y5+4*d5);//to-nineteen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5-d5, y5+2*d5);//seventeen
  endShape();
  //line
  line(x5+0.35*d5, y5+2.2*d5, x5+0.85*d5, y5+1.4*d5);
  line(x5+0.5*d5, y5+2.2*d5, x5+1.35*d5, y5+2*d5);
  line(x5+2.35*d5, y5+1.85*d5, x5+d5*3, y5+1.75*d5);
  //line-in-light-body
  line(x5-d5, y5+2.3*d5, x5+0.35*d5, y5+2.5*d5);
  line(x5-d5, y5+2.6*d5, x5+0.15*d5, y5+2.8*d5);
  line(x5-d5, y5+2.9*d5, x5+0.35*d5, y5+3.1*d5);
  line(x5-d5, y5+3.2*d5, x5+0.35*d5, y5+3.4*d5);
  line(x5-0.7*d5, y5+3.5*d5, x5+0.35*d5, y5+3.7*d5);
  line(x5-0.9*d5, y5+3.8*d5, x5+0.35*d5, y5+4*d5);
  //right-hand
  fill (192, 118, 63);
  arc(x5+1.8*d5, y5+2.6*d5, d5*1.3, d5*2, -PI/3, 3.8*PI/3, CLOSE);
  //upper-teeths
  fill(255, 255, 255);
  arc(x5-1.1*d5, y5-0.95*d5, 0.5*d5, 0.6*d5, PI/10, PI, OPEN);
  arc(x5-0.55*d5, y5-0.87*d5, 0.6*d5, 0.7*d5, PI/11, PI, OPEN);
  arc(x5+0.05*d5, y5-0.78*d5, 0.6*d5, 0.65*d5, PI/9, PI, OPEN);
  arc(x5+0.7*d5, y5-0.577*d5, 0.6*d5, 0.65*d5, PI/5, 5.3*PI/5, OPEN);
  arc(x5+1.2*d5, y5-0.31*d5, 0.45*d5, 0.65*d5, PI/7, 5.3*PI/5, OPEN);
  //lower-teeths
  arc(x5-1.18*d5, y5+0.65*d5, 0.65*d5, 0.5*d5, 1.03*PI, 2.03*PI, OPEN);
  arc(x5-0.48*d5, y5+0.7*d5, 0.7*d5, 0.5*d5, 1.03*PI, 2.06*PI, OPEN);
  arc(x5+d5*0.2, y5+0.65*d5, 0.6*d5, 0.5*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*0.77, y5+0.52*d5, 0.5*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*1.27, y5+0.42*d5, 0.4*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  //bear-face
  //eyes
  fill(69, 43, 23);
  circle(x5-0.7*d5, y5-0.25*d5, 0.15*d5);
  circle(x5-0.1*d5, y5-0.15*d5, 0.15*d5);
  //nose
  ellipse(x5-0.4*d5, y5-0.17*d5, 0.1*d5, 0.07*d5);
  //mouth
  noFill();
  arc(x5-0.4*d5, y5+0.08*d5, 0.4*d5, 0.2*d5, 0, 5*PI/6);
  fill(255, 173, 173);
  noStroke(); stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  //bear-face
  fill (192, 118, 63);
  stroke(69, 43, 23);
  arc(x5, y5, 3*d5, 2.8*d5, -1*PI/8, 4*PI/3, OPEN);
  //green-body
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.5*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5+0.35*d5, y5+4*d5);//nineteen
  vertex(x5+3*d5, y5+4*d5);//twenty
  vertex(x5+3*d5, y5+1.7*d5);//twenty-one
  vertex(x5+2.5*d5, y5+1.15*d5);//twenty-two
  endShape();
  //green-one
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*1.4, y5-d5);//one
  vertex(x5-d5*1.1, y5-d5*2);//two
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  endShape(CLOSE);
  //green-two
  beginShape();
  vertex(x5-d5*1.1, y5-d5*2.01);//from-two
  vertex(x5+d5*2.2, y5-d5*1.9);//five
  vertex(x5+d5*2.4, y5-1.6*d5);//six
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  endShape(CLOSE);
  //green-three
  beginShape();
  vertex(x5+d5*2.4, y5-1.56*d5);//six
  vertex(x5+d5*2.8, y5-d5*0.85);//seven
  vertex(x5+d5*2.65, y5+d5*0.9);//eight
  vertex(x5+2.3*d5, y5+d5*1.25);//nine
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5+d5*1.45, y5+d5*0.45);//twelve
  vertex(x5+d5*1.45, y5-d5*0.2);//thirteen
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  vertex(x5+d5*0.6, y5-d5*1.66);//three
  endShape();
  //green-four
  beginShape();
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5-d5*1.5, y5+d5*0.65);//fourteen
  vertex(x5-d5*1.4, y5+d5*1.35);//fifteen
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  endShape();
  //bear-left-hand
  fill (192, 118, 63);
  ellipse(x5-d5, y5+1.8*d5, 1.4*d5, d5*0.8);
  //green-body-hide-hand
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.45*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  endShape();
  fill(127, 95, 57);
  noStroke();
  ellipse(x5-d5*1.26, y5+1.8*d5, 0.17*d5, 0.24*d5);
  circle(x5-d5*1.37, y5+1.6*d5, 0.12*d5);
  circle(x5-d5*1.5, y5+1.8*d5, 0.13*d5);
  circle(x5-d5*1.45, y5+2*d5, 0.1*d5);
  //light-body
  stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  fill(148, 188, 125);
  beginShape();
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5-d5, y5+4*d5);//twenty-three
  vertex(x5+0.35*d5, y5+4*d5);//to-nineteen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5-d5, y5+2*d5);//seventeen
  endShape();
  //line
  line(x5+0.35*d5, y5+2.2*d5, x5+0.85*d5, y5+1.4*d5);
  line(x5+0.5*d5, y5+2.2*d5, x5+1.35*d5, y5+2*d5);
  line(x5+2.35*d5, y5+1.85*d5, x5+d5*3, y5+1.75*d5);
  //line-in-light-body
  line(x5-d5, y5+2.3*d5, x5+0.35*d5, y5+2.5*d5);
  line(x5-d5, y5+2.6*d5, x5+0.15*d5, y5+2.8*d5);
  line(x5-d5, y5+2.9*d5, x5+0.35*d5, y5+3.1*d5);
  line(x5-d5, y5+3.2*d5, x5+0.35*d5, y5+3.4*d5);
  line(x5-0.7*d5, y5+3.5*d5, x5+0.35*d5, y5+3.7*d5);
  line(x5-0.9*d5, y5+3.8*d5, x5+0.35*d5, y5+4*d5);
  //right-hand
  fill (192, 118, 63);
  arc(x5+1.8*d5, y5+2.6*d5, d5*1.3, d5*2, -PI/3, 3.8*PI/3, CLOSE);
  //upper-teeths
  fill(255, 255, 255);
  arc(x5-1.1*d5, y5-0.95*d5, 0.5*d5, 0.6*d5, PI/10, PI, OPEN);
  arc(x5-0.55*d5, y5-0.87*d5, 0.6*d5, 0.7*d5, PI/11, PI, OPEN);
  arc(x5+0.05*d5, y5-0.78*d5, 0.6*d5, 0.65*d5, PI/9, PI, OPEN);
  arc(x5+0.7*d5, y5-0.577*d5, 0.6*d5, 0.65*d5, PI/5, 5.3*PI/5, OPEN);
  arc(x5+1.2*d5, y5-0.31*d5, 0.45*d5, 0.65*d5, PI/7, 5.3*PI/5, OPEN);
  //lower-teeths
  arc(x5-1.18*d5, y5+0.65*d5, 0.65*d5, 0.5*d5, 1.03*PI, 2.03*PI, OPEN);
  arc(x5-0.48*d5, y5+0.7*d5, 0.7*d5, 0.5*d5, 1.03*PI, 2.06*PI, OPEN);
  arc(x5+d5*0.2, y5+0.65*d5, 0.6*d5, 0.5*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*0.77, y5+0.52*d5, 0.5*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*1.27, y5+0.42*d5, 0.4*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  //bear-face
  //eyes
  fill(69, 43, 23);
  circle(x5-0.7*d5, y5-0.25*d5, 0.15*d5);
  circle(x5-0.1*d5, y5-0.15*d5, 0.15*d5);
  //nose
  ellipse(x5-0.4*d5, y5-0.17*d5, 0.1*d5, 0.07*d5);
  //mouth
  noFill();
  arc(x5-0.4*d5, y5+0.08*d5, 0.4*d5, 0.2*d5, 0, 5*PI/6);
  fill(255, 173, 173);
  noStroke();
   stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  //bear-face
  fill (192, 118, 63);
  stroke(69, 43, 23);
  arc(x5, y5, 3*d5, 2.8*d5, -1*PI/8, 4*PI/3, OPEN);
  //green-body
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.5*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5+0.35*d5, y5+4*d5);//nineteen
  vertex(x5+3*d5, y5+4*d5);//twenty
  vertex(x5+3*d5, y5+1.7*d5);//twenty-one
  vertex(x5+2.5*d5, y5+1.15*d5);//twenty-two
  endShape();
  //green-one
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*1.4, y5-d5);//one
  vertex(x5-d5*1.1, y5-d5*2);//two
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  endShape(CLOSE);
  //green-two
  beginShape();
  vertex(x5-d5*1.1, y5-d5*2.01);//from-two
  vertex(x5+d5*2.2, y5-d5*1.9);//five
  vertex(x5+d5*2.4, y5-1.6*d5);//six
  vertex(x5+d5*0.6, y5-d5*1.7);//three
  endShape(CLOSE);
  //green-three
  beginShape();
  vertex(x5+d5*2.4, y5-1.56*d5);//six
  vertex(x5+d5*2.8, y5-d5*0.85);//seven
  vertex(x5+d5*2.65, y5+d5*0.9);//eight
  vertex(x5+2.3*d5, y5+d5*1.25);//nine
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5+d5*1.45, y5+d5*0.45);//twelve
  vertex(x5+d5*1.45, y5-d5*0.2);//thirteen
  vertex(x5+0.3*d5, y5-0.7*d5);//four
  vertex(x5+d5*0.6, y5-d5*1.66);//three
  endShape();
  //green-four
  beginShape();
  vertex(x5-0.15*d5, y5+d5*0.8);//eleven
  vertex(x5-d5*1.5, y5+d5*0.65);//fourteen
  vertex(x5-d5*1.4, y5+d5*1.35);//fifteen
  vertex(x5-0.1*d5, y5+d5*1.5);//ten
  endShape();
  //bear-left-hand
  fill (192, 118, 63);
  ellipse(x5-d5, y5+1.8*d5, 1.4*d5, d5*0.8);
  //green-body-hide-hand
  fill(110, 159, 82);
  beginShape();
  vertex(x5-d5*0.5, y5+1.45*d5);//sixteen
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  endShape();
  fill(127, 95, 57);
  noStroke();
  ellipse(x5-d5*1.26, y5+1.8*d5, 0.17*d5, 0.24*d5);
  circle(x5-d5*1.37, y5+1.6*d5, 0.12*d5);
  circle(x5-d5*1.5, y5+1.8*d5, 0.13*d5);
  circle(x5-d5*1.45, y5+2*d5, 0.1*d5);
  //light-body
  stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  fill(148, 188, 125);
  beginShape();
  vertex(x5-d5, y5+2*d5);//seventeen
  vertex(x5-d5, y5+4*d5);//twenty-three
  vertex(x5+0.35*d5, y5+4*d5);//to-nineteen
  vertex(x5+0.35*d5, y5+2.2*d5);//eightteen
  vertex(x5-d5, y5+2*d5);//seventeen
  endShape();
  //line
  line(x5+0.35*d5, y5+2.2*d5, x5+0.85*d5, y5+1.4*d5);
  line(x5+0.5*d5, y5+2.2*d5, x5+1.35*d5, y5+2*d5);
  line(x5+2.35*d5, y5+1.85*d5, x5+d5*3, y5+1.75*d5);
  //line-in-light-body
  line(x5-d5, y5+2.3*d5, x5+0.35*d5, y5+2.5*d5);
  line(x5-d5, y5+2.6*d5, x5+0.15*d5, y5+2.8*d5);
  line(x5-d5, y5+2.9*d5, x5+0.35*d5, y5+3.1*d5);
  line(x5-d5, y5+3.2*d5, x5+0.35*d5, y5+3.4*d5);
  line(x5-0.7*d5, y5+3.5*d5, x5+0.35*d5, y5+3.7*d5);
  line(x5-0.9*d5, y5+3.8*d5, x5+0.35*d5, y5+4*d5);
  //right-hand
  fill (192, 118, 63);
  arc(x5+1.8*d5, y5+2.6*d5, d5*1.3, d5*2, -PI/3, 3.8*PI/3, CLOSE);
  //upper-teeths
  fill(255, 255, 255);
  arc(x5-1.1*d5, y5-0.95*d5, 0.5*d5, 0.6*d5, PI/10, PI, OPEN);
  arc(x5-0.55*d5, y5-0.87*d5, 0.6*d5, 0.7*d5, PI/11, PI, OPEN);
  arc(x5+0.05*d5, y5-0.78*d5, 0.6*d5, 0.65*d5, PI/9, PI, OPEN);
  arc(x5+0.7*d5, y5-0.577*d5, 0.6*d5, 0.65*d5, PI/5, 5.3*PI/5, OPEN);
  arc(x5+1.2*d5, y5-0.31*d5, 0.45*d5, 0.65*d5, PI/7, 5.3*PI/5, OPEN);
  //lower-teeths
  arc(x5-1.18*d5, y5+0.65*d5, 0.65*d5, 0.5*d5, 1.03*PI, 2.03*PI, OPEN);
  arc(x5-0.48*d5, y5+0.7*d5, 0.7*d5, 0.5*d5, 1.03*PI, 2.06*PI, OPEN);
  arc(x5+d5*0.2, y5+0.65*d5, 0.6*d5, 0.5*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*0.77, y5+0.52*d5, 0.5*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  arc(x5+d5*1.27, y5+0.42*d5, 0.4*d5, 0.45*d5, 0.87*PI, 1.98*PI, OPEN);
  //bear-face
  //eyes
  fill(69, 43, 23);
  circle(x5-0.7*d5, y5-0.25*d5, 0.15*d5);
  circle(x5-0.1*d5, y5-0.15*d5, 0.15*d5);
  //nose
  ellipse(x5-0.4*d5, y5-0.17*d5, 0.1*d5, 0.07*d5);
  //mouth
  noFill();
  arc(x5-0.4*d5, y5+0.08*d5, 0.4*d5, 0.2*d5, 0, 5*PI/6);
  fill(255, 173, 173);
  noStroke();
  
  //dark-green
  stroke(69, 43, 23);
  strokeWeight(0.07*d5);
  fill(84, 122, 63);
  beginShape();
  vertex(x5+0.15*d5, y5-2*d5);
  vertex(x5+0.7*d5, y5-2.8*d5);
  vertex(x5+1.2*d5, y5-1.95*d5);
  endShape();
  beginShape();
  vertex(x5+1.25*d5, y5-1.95*d5);
  vertex(x5+1.7*d5, y5-2.8*d5);
  vertex(x5+2.2*d5, y5-1.9*d5);
  endShape();
  beginShape();
  vertex(x5+2.25*d5, y5-1.9*d5);
  vertex(x5+3.6*d5, y5-1.7*d5);
  vertex(x5+2.78*d5, y5-0.97*d5);
  endShape();
  beginShape();
  vertex(x5+2.84*d5, y5-0.9*d5);
  vertex(x5+3.9*d5, y5-0.5*d5);
  vertex(x5+2.77*d5, y5-0.1*d5);
  endShape();
  beginShape();
  vertex(x5+2.77*d5, y5-0.1*d5);
  vertex(x5+3.9*d5, y5+0.5*d5);
  vertex(x5+2.68*d5, y5+0.91*d5);
  endShape();
  beginShape();
  vertex(x5+2.55*d5, y5+1.15*d5);
  vertex(x5+3.9*d5, y5+1.2*d5);
  vertex(x5+2.98*d5, y5+1.65*d5);
  endShape();
  beginShape();
  vertex(x5+3.03*d5, y5+1.65*d5);
  vertex(x5+3.9*d5, y5+2.2*d5);
  vertex(x5+3.03*d5, y5+2.65*d5);
  endShape();
  beginShape();
  vertex(x5+3.03*d5, y5+2.65*d5);
  vertex(x5+3.9*d5, y5+3.15*d5);
  vertex(x5+3.03*d5, y5+4*d5);
  endShape();
}
void tree ( float h, float i , float j ){
 fill(84, 11, 14);
 noStroke();
 rect(h-j*0.15,i-j*0.43,j*0.3,j*2);//BROWN ONE 
 
 strokeWeight(j*0.06);
 stroke (27, 67, 50);
 strokeJoin(ROUND);
 fill (26, 147, 31);

 triangle(h,i-j*0.3,h-j*1.3,i+j*1.05,h+j*1.3,i+j*1.05);//down
 triangle(h,i-j*0.6,h-j*1.1,i+j*0.4,h+j*1.1,i+j*0.4);//middle
 triangle(h,i-j*1,h-j*0.9,i-j*0.25,h+j*0.9,i-j*0.25);//top
 
 strokeWeight(j*0.08);
 stroke (27, 67, 50);
 strokeJoin(ROUND);
 fill (60, 200, 61);
 
 circle (h+11*j,i-0.8*j,2.2*j);
 
 strokeWeight(j*0.1);
 line (h+11*j,i,h+11*j,i+1.5*j);//straight
 line (h+11*j,i,h+10.55*j,i-0.5*j);//left line
 line (h+11*j,i,h+11.5*j,i-0.5*j);
 
 noStroke ();
 fill (220,0,0);
 circle (h+10.65*j,i-1.45*j,0.2*j);
 circle (h+11.7*j,i-0.9*j,0.17*j);
 circle (h+10.3*j,i-0.5*j,0.15*j);

fill(239, 248, 31);
circle (h+10.2*j,i-1.1*j,0.15*j);
circle (h+11.1*j,i-0.7*j,0.2*j);
circle (h+11.5*j,i-1.45*j,0.15*j);
}
void taxi (float x0, float y0, float d0){
  fill(150, 61, 11);
  noStroke();
  beginShape();
  vertex(x0-d0*2.5,y0-d0*0.5);
  vertex(x0-d0*0.45,y0-d0*0.5);
  vertex(x0-d0*0.48,y0+d0*0.55);
  vertex(x0-d0*2.5,y0+d0*0.55);
  endShape(CLOSE);
  stroke(0);
  strokeWeight(d0*0.02);
  beginShape();
  vertex(x0-d0*0.48,y0+d0*0.55);
  vertex(x0-d0*2.5,y0+d0*0.55);
  endShape();
  strokeWeight(d0*0.02);
  beginShape();
  vertex(x0-d0*0.48,y0-d0*0.5);
  vertex(x0-d0*0.45,y0-d0*0.5);
  endShape();
  arc(x0-d0*1.7,y0-d0*0.5,d0*1.8,d0*1.5, -PI, 0);  // upper half of circle
  arc(x0-d0*1.1,y0+d0*0.04,d0*1.5,d0*2.1, -PI / 6, PI / 6); // 60 degrees
  arc(x0-d0*2.5,y0,d0*2.2,d0*1.1, PI / 2, 3 * PI / 2); // 180 degrees
  //wheel
  fill(92, 91, 88);
  circle(x0-d0,y0+d0*0.6,d0*0.6); //backwheel
  circle(x0-d0*2.5,y0+d0*0.6,d0*0.6); //front wheel
  fill(150, 61, 11);
  circle(x0-d0,y0+d0*0.6,d0*0.2);
  circle(x0-d0*2.5,y0+d0*0.6,d0*0.2);
  //light
  fill(250, 213, 15);
  ellipse(x0-d0*3.45,y0,d0*0.3,d0*0.4);
  //window
  fill(209, 206, 199);
  strokeWeight(d0*0.02);
  stroke(0);
  beginShape();
  vertex(x0-d0*2.4,y0-d0*0.4);
  vertex(x0-d0*1.8,y0-d0*0.4);
  vertex(x0-d0*1.8,y0-d0*0.85);
  endShape();
  fill(209, 206, 199);
  arc(x0-d0*1.8,y0-d0*0.4,d0*1.2,d0*0.9, PI , 3*PI / 2); // lower quarter circle
  fill(209, 206, 199);
  strokeWeight(d0*0.02);
  beginShape();
  vertex(x0-d0*1.1,y0-d0*0.85);
  vertex(x0-d0*1.5,y0-d0*0.85);
  vertex(x0-d0*1.5,y0-d0*0.4);
  vertex(x0-d0*1.1,y0-d0*0.4);
  endShape();
  arc(x0-d0*1.45,y0-d0*0.62,d0*0.9,d0*0.9,-PI / 6, PI / 6); // 60 degrees
  //text
  textSize(d0*0.3);
  text(" Taxi ",x0-d0*2.1,y0+d0*0.2,d0/10);
}
void roadhouse ( float x6, float y6, float d6){
  fill(140, 154, 180);
  noStroke();
  beginShape();
  vertex(x6-d6,y6-d6*1.1);
  vertex(x6,y6-d6*1.1);
  vertex(x6,y6+d6);
  vertex(x6-d6,y6+d6);
  endShape(CLOSE);
}

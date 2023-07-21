float x, y, d;//cloud left
float x0, y0, d0;//cat
float x1, y1, d1;//cloud right
float x2, y2, d2;//tree left
float x3, y3, d3;//tree middle
float x4, y4, d4;//tree right
float x5, y5, d5;//tent
float x6, y6, d6;//fire
float x7, y7, d7;//green1
float x8, y8, d8; // stone
float x9, y9, d9; //chair(Stone)
float x01, y01, d01 ; //human
float x10, y10, d10; //sign

void setup() {

  size (1500, 800);
  background(#090580);//sky
  noStroke();

  fill (#023e8a);//land
  ellipse( 1000, 600, 2500, 700);//land

  fill (#0077b6);
  ellipse (0, 780, 1000, 650);

  x=810; //cloud left
  y=400;
  d=100;

  x0 = 1150 ;//cat
  y0 = 660 ;
  d0 = 60 ;

  x1=1200; //cloud right
  y1=420;
  d1=90;

  x2=350; //tree left
  y2=350;
  d2=50;

  x3=580; //tree middle
  y3=280;
  d3=80;

  x4=880; //tree right
  y4=330;
  d4=70;

  x5=1200; //tent
  y5=400;
  d5=80;

  x6=900; //fire
  y6=600;
  d6=70;

  x8 = 330; // stone
  y8 = 410;
  d8 = 100;

  x9 = 980; //chair
  y9 = 590;
  d9 = 80;

  x7 = 200; //green1
  y7 = 500;
  d7 = 50;

  x01 = 750 ;//HUMAN
  y01 = 400 ;
  d01 = 150 ;

  x10 = 550; //sign
  y10 = 380;
  d10 = 70;

  // 2 greens
  for (int i= 0; i < 2; i++) {
    green1(200 + i * 100, 500 + i*200, 50);
  }
}
void draw () {

  background (#090580); //sky
  noStroke();

  fill (#023e8a);//land
  ellipse ( 1000, 600, 2500, 700);//land

  fill (#0077b6);
  ellipse (0, 780, 1000, 650);//lake

  for (int i= 0; i < 2; i++) {
    green1(200 + i * 100, 500 + i*200, 50);
  } // 2 greens

  cloud ( x, y, d );//left
  cloud ( x1, y1, d1 );//right
  tree ( x3, y3, d3 );//middle
  tree ( x2, y2, d2 ); //left
  tree ( x4, y4, d4 );//right
  tent ( x5, y5, d5 );//tent
  fire ( x6, y6, d6 );//fire
  green1 ( x7, y7, d7 );
  stone ( x8, y8, d8 );
  chair ( x9, y9, d9 );
  cat ( x0, y0, d0 );
  human( x01, y01, d01 );
  sign ( x10, y10, d10);
  fill(255, 0, 0);
  textSize (20);
  text (" WARNING: DO NOT CROSS THE LINE ", 1100, 100);
  stroke(255, 0, 0);
  strokeWeight(0.7);
  noFill();
  ellipse (0, 780, 1200, 900);//lake

  if (x0 <550 || x01<550) {
    stroke(255, 0, 0);
    noFill();
    strokeWeight(7);
    ellipse (0, 780, 1200, 900);//lake
    fill(255, 0, 0);
    textSize (50);
    text (" !!DANGER ZONE!! ", 1000, 200);
    textSize (30);
    text (" Go back if you want to survive.  ", 1000, 240 ) ;
  } else {
  }
}
void keyPressed() {
  if (key == 'a') x0 -= 10 ;//cat to left
  else if ( key == 'd') x0 +=10 ; //cat to right
  else if ( key == 'w') y0 -=10 ; //cat go up
  else if ( key == 's') y0 +=10 ; //cat go down

  //else if ( key == 'l') y01 = 2 ; //black
  //else if ( key == 'k') y01 = 1 ; //blue

  //using arrow keys -> <- up down
  if ( key == CODED) {
    if ( keyCode == UP) y0 -=10;
    else if ( keyCode== DOWN ) y0 += 10;
    else if ( keyCode== LEFT)  x0 -= 10 ;
    else if ( keyCode== RIGHT)  x0 += 10 ;
  }
}
void mouseReleased(){ //event function
 x01 = mouseX;
 y01 = mouseY;
 }

void cloud (float x, float y, float d ) {
  //cloud
  fill (255);
  noStroke();
  circle (x-3.8*d, y-3.4*d, 1*d);
  circle (x-4.4*d, y-3.25*d, 0.7*d);
  circle (x-3.2*d, y-3.25*d, 0.7*d);
  circle (x-2.75*d, y-3.18*d, 0.5*d);
}
void tree(float x2, float y2, float d2 ) {

  strokeWeight(d2*0.07);
  stroke (0);
  //brown
  fill(84, 11, 14);
  rect (x2+d2*0.75, y2, d2*0.3, d2*1.3 );
  // green
  fill (0, 180, 0);
  circle (x2, y2, d2);
  circle (x2+d2*0.85, y2, d2);
  circle (x2+d2*1.75, y2, d2);
  circle (x2+d2*0.25, y2-d2*0.7, d2);
  circle (x2+d2*0.95, y2-d2*1, d2*1.1);
  circle (x2+d2*1.6, y2-d2*0.6, d2);

  noStroke();//cover circle in tree
  rect ( x2+d2*0.2, y2-d2*1.15, d2*1.2, d2 );
  rect (x2-d2*0.15, y2-d2*0.6, d2*2.15, d2*0.8);
}

void tent(float x5, float y5, float d5 ) {

  fill (#faa307);
  stroke (0);
  strokeJoin(ROUND);
  strokeWeight(d5*0.1);
  //FRONT
  beginShape ();
  vertex(x5, y5 );
  vertex(x5-d5*1.5, y5+d5*2.6);
  vertex(x5+d5*1.5, y5+d5*2.6);
  endShape(CLOSE);
  //SIDE
  fill (#f48c06);
  beginShape ();
  vertex(x5, y5 );
  vertex(x5+d5*1, y5 );
  vertex(x5+d5*2.8, y5+d5*2.6);
  vertex(x5+d5*1.5, y5+d5*2.6);
  endShape(CLOSE);
  //inside
  fill (70);
  beginShape ();
  vertex(x5, y5 );
  vertex(x5, y5+d5*2.6 );
  vertex(x5-d5*0.6, y5+d5*2.6 );
  vertex(x5, y5+d5*1.2 );
  endShape(CLOSE);
  //line on top
  //font on top
  line (x5, y5, x5-d5*0.2, y5-d5*0.3 );
  line (x5, y5, x5+d5*0.2, y5-d5*0.3 );
  //behind on top
  line (x5+d5*1, y5, x5+d5*0.8, y5-d5*0.3 );
  line (x5+d5*1, y5, x5+d5*1.2, y5-d5*0.3 );
}
void fire ( float x6, float y6, float d6 ) {

  strokeWeight(d6*0.2);
  stroke(0);
  line( x6-0.5*d6, y6+0.3*d6, x6+0.5*d6, y6+0.7*d6 );
  line( x6+0.5*d6, y6+0.3*d6, x6-0.5*d6, y6+0.7*d6);
  //fire
  stroke (0);
  fill(#f48c06);
  strokeWeight(d5*0.07);
  strokeJoin(ROUND);
  //out
  circle ( x6, y6, d6 );
  beginShape ();
  vertex ( x6-0.45*d6, y6-0.2*d6);
  vertex ( x6, y6-1.1*d6);
  vertex ( x6+0.47*d6, y6-0.2*d6);
  endShape();
  //in
  fill(#dc2f02);
  circle ( x6, y6+0.15*d6, 0.6*d6 );
  beginShape ();
  vertex ( x6-0.27*d6, y6+0.02*d6);
  vertex ( x6, y6-0.5*d6);
  vertex ( x6+0.28*d6, y6+0.02*d6);
  endShape();
}
void green1 (float x7, float y7, float d7) {
  fill(0, 180, 0);
  strokeWeight(0.005*d7);
  stroke(0);
  arc (x7-d7*2, y7+d7, d7*2, d7*0.8, 1*PI/6, 10.5*PI/6, PIE);
}
void stone (float x8, float y8, float d8) {
  stroke(0);
  strokeWeight(0.04*d8);
  strokeJoin(ROUND);
  fill(#737e8c);
  ellipse ( x8-d8*0.9, y8, d8, d8/2);
  ellipse ( x8-d8*1.15, y8+d8*0.3, d8*0.4, d8*0.5);
  arc(x8-d8*2.2, y8+d8*0.3, d8*1.7, d8*1.5, -PI, 0, CLOSE);
}
void chair ( float x9, float y9, float d9) {
  fill(#A47551);
  strokeWeight(0.005*d8);
  rect (x9-d9*2, y9+d9, d9*2, d9/2);
  fill(#D0B49F);
  ellipse( x9-d9*1.97, y9+d9*1.25, d9*0.2, d9*0.5); //1
  ellipse( x9+d9*0.03, y9+d9*1.25, d9*0.2, d9*0.5); //2
  fill(#F4EBD0);
  ellipse( x9-d9*1.97, y9+d9*1.25, d9*0.05, d9*0.2);
  ellipse( x9+d9*0.03, y9+d9*1.25, d9*0.05, d9*0.2);
  fill(0);
  ellipse( x9-d9, y9+d9*1.15, d9*1.2, 0); //line0
  ellipse( x9-d9, y9+d9*1.3, d9, 0); //line1
}
void cat (float x0, float y0, float d0 ) {
  fill(190);
  strokeWeight(d0*0.05);
  //tight
  curve ( x0+d0*0.7, y0+1.13*d0, x0-d0*0.5, y0+1.0*d0, x0-d0*0.6, y0+1.2*d0, x0-d0*0.07, y0+1.2*d0 );
  beginShape();
  vertex(x0-d0*0.5, y0+1.0*d0 );
  vertex(x0, y0+1.13*d0 );
  vertex(x0, y0+1.28*d0 );
  vertex(x0-d0*0.6, y0+1.20*d0 );
  endShape ();
  //leg
  rect ( x0-d0*0.07, y0+1.13*d0, d0*0.94, d0*0.4, d0*0.8);
  //body
  arc (x0+0.4*d0, y0+d0, 0.75*d0, 1.3*d0, 0.7*PI, 2.3*PI, CLOSE );
  fill (240);
  arc (x0+0.4*d0, y0+1.1*d0, 0.5*d0, d0, 0.7*PI, 2.3*PI, CLOSE );

  //LINE
  line ( x0+0.33*d0, y0+1.25*d0, x0+0.33*d0, y0+1.5*d0 );
  line ( x0+0.47*d0, y0+1.25*d0, x0+0.47*d0, y0+1.5*d0 );
  //face
  fill(190);
  rect (x0, y0, d0*0.8, d0*0.7, d0*2.9, d0*2.9, d0*0.9, d0*0.9 );
  //left ear
  beginShape();
  vertex (x0+ 0.035*d0, y0+0.25*d0);
  vertex (x0, y0-0.1*d0);
  vertex (x0+0.3*d0, y0+0.01*d0);
  endShape();
  //right ear
  beginShape();
  vertex (x0+ 0.77*d0, y0+0.25*d0);
  vertex (x0+ 0.8*d0, y0-0.1*d0);
  vertex (x0+0.5*d0, y0+0.01*d0);
  endShape();
  //eye
  fill (0);
  noStroke ();
  circle ( x0+d0*0.25, y0+d0*0.35, d0*0.18 );
  circle ( x0+d0*0.55, y0+d0*0.35, d0*0.18 );
  //white
  fill (240);
  circle ( x0+d0*0.25, y0+d0*0.33, d0*0.06 );
  circle ( x0+d0*0.55, y0+d0*0.33, d0*0.06 );
  //nose
  fill (#370617);
  ellipse ( x0+d0*0.4, y0+d0*0.5, d0*0.12, d0*0.08 );
}
void human(float x01, float y01, float d01 ) {
  strokeWeight(d01*0.03);
  strokeJoin(ROUND);
  stroke (0);
  fill (#fed9b7);//skin
  rect (x01, y01, d01*0.5, d01*0.5, d01*0.5 );//face
  beginShape ();//neck
  vertex(x01+d01*0.15, y01+d01*0.5);
  vertex(x01+d01*0.13, y01+d01*0.7);
  vertex(x01+d01*0.37, y01+d01*0.7);
  vertex(x01+d01*0.35, y01+d01*0.5);
  endShape (CLOSE);
  fill ( 250, 130, 130);
  beginShape ();//dresas
  vertex ( x01+d01*0.13, y01+d01*0.57);
  vertex ( x01-d01*0.01, y01+d01*0.6);
  vertex ( x01-d01*0.08, y01+d01*0.9);
  vertex ( x01+d01*0.06, y01+d01*0.93);
  vertex ( x01+d01*0.13, y01+d01*0.7);
  vertex ( x01+d01*0.04, y01+d01*1.4);
  vertex ( x01+d01*0.5, y01+d01*1.4);
  vertex ( x01+d01*0.38, y01+d01*0.7);
  vertex ( x01+d01*0.45, y01+d01*0.93);
  vertex ( x01+d01*0.6, y01+d01*0.9);
  vertex ( x01+d01*0.5, y01+d01*0.6);
  vertex ( x01+d01*0.35, y01+d01*0.55);

  endShape ();
}
void sign ( float x10, float y10, float d10) {
  strokeWeight(d10*0.02);
  fill (#A47551);
  rect ( x10-d10, y10, d10*1.6, d10*0.8);
  rect ( x10-d10*0.3, y10+d10*0.8, d10*0.2, d10);

  fill( 0);
  textSize( d10*0.16);
  text (" warning-dangerzone!! ", x10-d10*0.95, y10+d10*0.45);
}

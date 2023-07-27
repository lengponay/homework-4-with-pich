void cat (float x, float y, float d, int option ) {
  fill(190);
  strokeWeight(d*0.05);
  //tight
  curve ( x+d*0.7, y+1.13*d, x-d*0.5, y+1.0*d, x-d*0.6, y+1.2*d, x-d*0.07, y+1.2*d );
  beginShape();
  vertex(x-d*0.5, y+1.0*d );
  vertex(x, y+1.13*d );
  vertex(x, y+1.28*d );
  vertex(x-d*0.6, y+1.20*d );
  endShape ();
  //leg
  rect ( x-d*0.07, y+1.13*d, d*0.94, d*0.4, d*0.8);
  //body
  arc (x+0.4*d, y+d, 0.75*d, 1.3*d, 0.7*PI, 2.3*PI, CLOSE );
  fill (240);
  arc (x+0.4*d, y+1.1*d, 0.5*d, d, 0.7*PI, 2.3*PI, CLOSE );

  //LINE
  line ( x+0.33*d, y+1.25*d, x+0.33*d, y+1.5*d );
  line ( x+0.47*d, y+1.25*d, x+0.47*d, y+1.5*d );
  //face
  if(option == 0)fill(190);
  else fill(255, 250, 200);//ksach
  rect (x, y, d*0.8, d*0.7, d*2.9, d*2.9, d*0.9, d*0.9 );
  //left ear
  beginShape();
  vertex (x+ 0.035*d, y+0.25*d);
  vertex (x, y-0.1*d);
  vertex (x+0.3*d, y+0.01*d);
  endShape();
  //right ear
  beginShape();
  vertex (x+ 0.77*d, y+0.25*d);
  vertex (x+ 0.8*d, y-0.1*d);
  vertex (x+0.5*d, y+0.01*d);
  endShape();
  //eye
  fill (0);
  noStroke ();
  circle ( x+d*0.25, y+d*0.35, d*0.18 );
  circle ( x+d*0.55, y+d*0.35, d*0.18 );
  //white
  fill (240);
  circle ( x+d*0.25, y+d*0.33, d*0.06 );
  circle ( x+d*0.55, y+d*0.33, d*0.06 );
  //nose
  fill (#370617);
  ellipse ( x+d*0.4, y+d*0.5, d*0.12, d*0.08 );
}

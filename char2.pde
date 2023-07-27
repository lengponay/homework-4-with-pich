void ka (float x, float y, float d, int oo){
//right arm 
fill(237, 130, 199);
noStroke();
ellipse(x-10,y-d*1.1,d*0.6,d);
//left arm 
noStroke();
ellipse(x-d*1.5,y-d*0.3,d,d*0.6);
//right leg
noStroke();
fill(201, 56, 70);
ellipse(x,y+d*0.5,d,d*0.6);
//left leg
ellipse(x-d*1.3,y+d*0.5,d,d*0.6);
//head
if(oo == 0) fill(237, 130, 199);
else fill(#1ecbe1); //light_blue
noStroke();
circle(x-d*0.7,y-d*0.4,d*1.8);
//eyes
strokeWeight(2);
stroke(0);
fill(55, 66, 196);
ellipse(x-d,y-d*0.8,d*0.15,d*0.35); //left
ellipse(x-d*0.5,y-d*0.8,d*0.15,d*0.35); //right
fill(0);
ellipse(x-d,y-d*0.85,d*0.12,d*0.21); //left01
ellipse(x-d*0.5,y-d*0.85,d*0.12,d*0.21); //right01
fill(255);
noStroke();
ellipse(x-d,y-d*0.9,d*0.1,d*0.13); //left01
ellipse(x-d*0.5,y-d*0.9,d*0.1,d*0.13); //left02
//mouth
fill(133, 37, 50);
arc(x-d*0.75,y-d*0.4,d*0.3,d*0.4,0,PI); //1st
fill(201, 56, 70);
ellipse(x-d*0.75,y-d*0.27,d*0.2,d*0.12);
//blush
fill(237, 78, 224);
ellipse(x-d*1.2,y-d*0.5,d*0.2,d*0.1);
ellipse(x-d*0.3,y-d*0.5,d*0.2,d*0.1);

}

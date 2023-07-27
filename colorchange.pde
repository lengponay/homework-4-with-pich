float a, b, c;
float a2, b2, c2;
int fcount = 0;
void setup() {
  size(800, 800);
  background(255);
  a = 300;
  b = 420;
  c = 70;
  a2 = 550;
  b2 = 350;
  c2 = 80;
  textSize(50);
}
void draw() {  // called 60 times in a second
  if (fcount < 120) {
    background(#846b94);
    ka(a, b, c,0);
  } else if (fcount < 240) {
    background(#916e6e);
    cat(a2, b2, c2,0);
  } else {
    background(94, 138, 161);
    ka(a, b, c,1);
    cat(a2, b2, c2,1);
  }
  fcount++;
  if (fcount>360) fcount = 0;
  textSize(30);
  text(fcount/60 + " sec ", 100, 100);
}

// lav alle stjerner
Star[] star = new Star[1000];

// jeg har kun et stjerneskud af gangen 
Star shootingStar;


void setup() {
  size(800, 800);
  
  // initiering af alle stjerner
  for (int i =0; i<star.length; i++) {
    star[i]= new Star();
  }
  shootingStar = new Star();
  
}
void draw() {
  background(0);
  // vis alle stjerner
  for (int i =0; i<star.length; i++) {
    star[i].drawStar();
  }
  // få stjerner til at blinke
  star[int(random(1000))].dia=4;
  star[int(random(1000))].dia=3;
  shootingStar.drawStar();
  
 // lav stjerneskud. Hvis gennemsigtigheden er 0 skal den lave et nyt 
  shootingStar.moveStar();
  if(shootingStar.alpha <1){
    shootingStar = new Star();
  }
  
}

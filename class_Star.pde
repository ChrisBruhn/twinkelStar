class Star {

  int dia=3;
  int alpha = 255;
  PVector velocity = new PVector(random(-2, 2), random(-2, 2)); // farten på stjerne skudet
  PVector location = new PVector(random(width), random(height));

  
  void drawStar() {
    fill(255, 255, 50, alpha);
    circle (location.x, location.y, dia);
  }

  void moveStar() {
    location.add(velocity);
    alpha--;
  }
}

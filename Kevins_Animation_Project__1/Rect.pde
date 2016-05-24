class Rect{
  PVector loc;
  PVector vel;
  
  Rect() {
    loc = new PVector(random(width),random(height));
    vel = new PVector(1+random(2),1+random(2));
  }
  
  void rectMove(){
    move();
    bounce();
    display();
  }
  
  void move(){
    loc.add(vel);
  }
  
  void bounce(){
    if((loc.x > width) || (loc.x < 0)){
      vel.x = vel.x * -1;
    }
    if((loc.y > height) || (loc.y < 0)){
      vel.y = vel.y * -1;
    }
  }
  
  void display() {
    rectMode(CENTER);
    fill(255);
//    rect(loc.x, loc.y, 40, 40);
  }
  
}
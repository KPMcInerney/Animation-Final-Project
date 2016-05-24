class Ball{
  PVector loc;
  PVector vel;
  PVector acc;
  
  Ball(){
    loc = new PVector(r.loc.x, r.loc.y);
    vel = new PVector(3+random(4), 3+random(4));
    acc = new PVector(0,0);
  }
  
  void ballMove() {
    move();
    bounce();
    display();
  }
  
  void bounce(){
    if((loc.x > width) || (loc.x < 0)){
      vel.x = vel.x * -1;
      acc.y = acc.y *-1;
    }
    if((loc.y > height) || (loc.y < 0)){
      vel.y = vel.y * -1;
      acc.y = acc.y * -1;
    }
  }
  
  void move(){
    PVector dir = PVector.sub(r.loc, loc);
    dir.normalize();
    dir.mult(.1);
    acc = dir;
    vel.add(acc);
    vel.limit(8);
    loc.add(vel);
  }
  
  void display() {
    fill(255);
//    ellipse(loc.x, loc.y, 10, 10);
  }
  
}
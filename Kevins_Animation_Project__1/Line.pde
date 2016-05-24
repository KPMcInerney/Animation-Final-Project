class Line{
  PVector head;
  PVector tail;
  
  Line(PVector head, PVector tail){
      stroke(colorSwitch3/10, colorSwitch/10, colorSwitch2/10);
//      stroke(random(255),random(255),random(255));
      strokeWeight(.1);
      line(head.x, head.y, tail.x, tail.y);
      headX = head.x;
      headY = head.y;
      tailX = tail.x;
      tailY = tail.y;
  }
  
  PVector getHead(){
    return head;
  }
  
  PVector getTail(){
    return tail;
  }

void display(){
  line(headX, headY, tailX, tailY);
}

}
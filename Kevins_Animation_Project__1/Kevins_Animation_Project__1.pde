import java.util.Calendar;
Rect r;
Ball[] balls = new Ball[8];
int lineListSize = 4000;
//Line[] lines = new Line[100];
ArrayList<Line> lines = new ArrayList<Line>(lineListSize);
float headX, headY, tailX, tailY;
int colorSwitch, colorSwitch2, colorSwitch3;
import processing.pdf.*;
boolean savePDF = false;


void setup(){
  size(1000,700);
  background(0);
  r = new Rect();
  initiate();
}

void draw(){
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
//  background(0);
//  for (int i = 0; i < lines.size(); i++){
//    line(headX,headY,tailX,tailY);
//  lines.get(i).display();
//  }
  r.rectMove();
  run();
  lines();
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
//  if (key=='p' || key=='P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void initiate() {
  for (int i = 0; i < balls.length; i++){
  balls[i] = new Ball();
  }
}

void run(){
  for (int i = 0; i < balls.length; i++){
    balls[i].ballMove();
  }
}

void lines(){
  for (int i = 0; i < balls.length - 1; i++){
    println(lines.size());
    //lines[lines.length-(i+1)] = new Line(balls[i].loc,balls[i+1].loc);
    lines.add(0, new Line(balls[i].loc,balls[i+1].loc));
    colorSwitch += random(5)+ 1;
    colorSwitch2 += random(5) + 2;
    colorSwitch3 += random(5) + 3;
    if(colorSwitch > 2550){
      colorSwitch = 0;
    }
    if(colorSwitch2 > 2550){
      colorSwitch2 = 0;
    }
    if(colorSwitch3 > 2550){
      colorSwitch3 = 0;
    }
    if(lines.size() >= lineListSize){
      stroke(0);
      lines.remove(lines.size() - 1);
    }
  }
}
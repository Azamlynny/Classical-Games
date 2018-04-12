import java.util.List;
import java.util.ArrayList;

Ball ball = new Ball();
KeypressTracker keypressTracker = new KeypressTracker();
Paddle paddleL = new Paddle();
Paddle paddleR = new Paddle();

void setup(){
  size(1950,1000); 
  noStroke();
}

void keyPressed(){
  keypressTracker.addChar(key);
}

void keyReleased(){
  keypressTracker.removeChar(key);
}

void draw(){
  background(0);
  ball.nextPos();
  ball.drawBall();
}
class Ball{
  float xCoord = 1000;
  float yCoord = 500;
  float xVelocity = 8;
  float yVelocity = 5;
  
  void drawBall(){
    fill(255);
    ellipse(xCoord, yCoord, 30, 30);
    
  }
  
  void nextPos(){
    if(this.xCoord >= 1950 || this.xCoord <= 0){
      this.xVelocity = -this.xVelocity;
    }
    if(this.yCoord >= 1000 || this.yCoord <= 0){
      this.yVelocity = -this.yVelocity; 
    }
    this.xCoord += this.xVelocity;
    this.yCoord += this.yVelocity;
  }
  
}
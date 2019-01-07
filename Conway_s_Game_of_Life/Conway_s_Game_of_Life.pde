
Tileboard Tileboard = new Tileboard();
boolean drawing = false;

void setup(){
  size(1980, 1000);
  frameRate(60);
  stroke(1);
}

void draw(){
  background(255);
  
  fill(0);
  Tileboard.drawTileboard();
  System.out.println(width + " " + Tileboard.columns);
  
  if(drawing == true){
    Tileboard.newCell(); 
  }
}

void mousePressed(){
  Tileboard.newCell();
  
}

void keyPressed(){

  if(key == 32){
    Tileboard.nextGeneration(); 
  }
  
  if(key == 'w'){
    if(drawing == false){
    drawing = true; 
    }
    else{
     drawing = false; 
    }
  }
}

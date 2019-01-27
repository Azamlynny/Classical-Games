int columns = 50;
int rows = (int) (columns * 1.7);
boolean lost = false;
int tileWidth = 0;

Boolean[][] tileboard = new Boolean[rows][columns];
Integer[][] playerboard = new Integer[rows][columns];

void setup(){
  frameRate(60);
  size(1960, 1080);
  generateBoard();
  tileWidth = height/columns;
  strokeWeight(0);
}

void draw(){
  background(255);
  drawBoard();  
}

void generateBoard(){
  for(int y = 0; y < columns; y++){
    for(int x = 0; x < rows; x++){ 
      if(random(100) > 80){
        tileboard[x][y] = true; 
      }
      else{
        tileboard[x][y] = false;
      }
      playerboard[x][y] = 0;
    }
  }
}

void drawBoard(){
  for(int y = 0; y < columns; y++){
    for(int x = 0; x < rows; x++){
      if(lost && tileboard[x][y]){
        fill(0);
      }
       if(playerboard[x][y] == 1){ //flag
        fill(255, 0, 0); 
      }
       if(playerboard[x][y] != 1 && playerboard[x][y] != 0){ //Uncovered but no flag
        fill(255); 
      }
      else{
        fill(200); 
      }
      rect(tileWidth * x, tileWidth *y, tileWidth, tileWidth);
    }
  }
}
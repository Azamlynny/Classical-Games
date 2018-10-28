class Tileboard{
  int boxWidth = 20;
  int boxHeight = 20;
  int columns = (1980 / boxWidth);
  int rows = (1000 / boxHeight);
  int[][] tileboard = new int[columns][rows];
  int[][] tempboard = new int[columns][rows];
  int neighbors = 0;
  
 public Tileboard(){
   for(int x = 0; x < columns; x++){
     for(int y = 0; y < rows; y++){
        tileboard[x][y] = 0;
     }
   }
   
 }
  
  void drawTileboard(){
    for(int i = 0; i < columns + 1; i++){
       line(boxWidth * i, 0, boxWidth * i, 1000);
    }
    for(int i = 0; i < rows + 1; i++){
       line(0, boxHeight * i, 2000, boxHeight * i);
    }
    
    for(int x = 0; x < columns; x++){
      for(int y = 0; y < rows; y++){
        if(this.tileboard[x][y] == 1){
          rect((x+1) * boxWidth, (y+1) * boxHeight, boxWidth, boxHeight); 
        }
      }
    }
    
  }
  
  void nextGeneration(){
    for(int x = 0; x < columns; x++){
      for(int y = 0; y < rows; y++){
        try {
          if(tileboard[x - 1][y - 1] == 1){
            neighbors++; 
          }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x - 1][y] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x - 1][y + 1] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x][y + 1] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x + 1][y + 1] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x + 1][y] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x + 1][y - 1] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        try{
        if(tileboard[x][y - 1] == 1){
          neighbors++; 
        }
        } catch (ArrayIndexOutOfBoundsException e){
          
        }
        
        tempboard[x][y] = neighbors;
        neighbors = 0;
        
      }
    }
    
    for(int x = 0; x < columns; x++){
      for(int y = 0; y < rows; y++){
        if(tempboard[x][y] == 3 && tileboard[x][y] == 0){
          tileboard[x][y] = 1; 
        }
        else if(tileboard[x][y] == 1 && tempboard[x][y] < 2){
          tileboard[x][y] = 0; 
        }
        else if(tileboard[x][y] == 1 && tempboard[x][y] > 3){
          tileboard[x][y] = 0; 
        }
      }
    }
    
  }
  
  void newCell(){
     if(this.tileboard[(int) (mouseX / boxWidth) - 1][(int) (mouseY / boxHeight) - 1] == 0){
       this.tileboard[(int) (mouseX / boxWidth) - 1][(int) (mouseY / boxHeight) - 1] = 1;
     }
     else{
       this.tileboard[(int) (mouseX / boxWidth) - 1][(int) (mouseY / boxHeight) - 1] = 0;
     }
  }
  
}

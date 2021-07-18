// langton's ant
// rendered on the canvas as a grid of rects



int[][] grid;
int x,y;

// IN CLOCKWISE ORDER SO YOU CAN ADD AND SUB 1
int ANTUP =0;
int ANTRIGHT =1;
int ANTDOWN =2;
int ANTLEFT =3;

int dir;

// grid size /10 windown size
void setup(){
  size(800,800);
  grid = new int[80][80];
  x=40;
  y=40;
  dir = 
  grid[x][y]= 1;
  
  
}

void turnRight(){
 dir++; 
  if (dir > ANTLEFT){
    dir = ANTUP;
  }
}


void turnLeft(){
 dir--;
  if (dir < ANTUP){
    dir = ANTLEFT;
  }
}

void moveForward(){
  if (dir == ANTUP){
   y--; 
  }else if (dir == ANTDOWN){
   y++; 
    
  }else if (dir == ANTRIGHT){
   x++; 
    
  }else if (dir == ANTLEFT){
   x--; 
  }
  // check edges
  
  if (x > 80-1) {
   x =0; 
  } else if (x < 0){
    x = 80-1;
  }
  
  if (y > 80-1) {
   y =0; 
  } else if (y < 0){
    y = 80-1;
  }
  
}

void draw(){
  background(255);
  // add a loop to run the algorithm mutiple times each frame
  
  for (int n =0; n< 25; n++){
  
  
  int state = grid[x][y];
  
  if (state == 0){
    turnRight();
    grid[x][y] = 1;
    moveForward(); 
  }else if (state == 1){
    turnLeft();
    grid[x][y] = 0;
    moveForward();
  }
  }
  // an inefficent way to display
  
  for (int i =0; i< 80;i++){
    for(int j = 0; j < 80; j++){
      if (grid[i][j] ==0){
        fill(255);
      }else{
        fill(0);
      }
      rect(i*10,j*10,10,10);
    }
  }
 
 
}

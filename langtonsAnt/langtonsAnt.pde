// langton's ant


int[][] grid;
int x,y;

// IN CLOCKWISE ORDER SO YOU CAN ADD AND SUB 1
int ANTUP =0;
int ANTRIGHT =1;
int ANTDOWN =2;
int ANTLEFT =3;

int dir;


void setup(){
  size(400,400);
  grid = new int[width][height];
  x=200;
  y=200;
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
  
  if (x > width) {
   x =0; 
  } else if (x < 0){
    x = width-1;
  }
  
  if (y > height) {
   y =0; 
  } else if (y < 0){
    y = height-1;
  }
  
}

void draw(){
  background(255);
  int state = grid[x][y];
  
  if (state == 0){
    turnRight();
    grid[x][y] = 1;
    moveForward();
    
    
    
  }
  
  
  
  
}

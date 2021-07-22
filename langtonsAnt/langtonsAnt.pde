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
  size(800,800);
  grid = new int[width][height];
  x=width/2;
  y=height/2;
  dir = 
  grid[x][y]= 1;
  print("hello");
  
  
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
  
  if (x > width-1) {
   x =0; 
  } else if (x < 0){
    x = width-1;
  }
  
  if (y > height-1) {
   y =0; 
  } else if (y < 0){
    y = height-1;
  }
  
}

void draw(){
  background(100);
  
  for (int i =0; i < 100; i++){
  int state = grid[x][y];
  
  if (state == 0){
    turnRight();
    grid[x][y] = 1;
  }else if(state ==1 ){
    turnLeft();
    grid[x][y] =0;
  }
    
    moveForward();
    
  }
  
   loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int pix = i + width * j;
      if (grid[i][j] == 0) {
        pixels[pix] = color(255);
      } else {
        pixels[pix] = color(255,0,0);
      }
    }
  }
  updatePixels();
  
  
  
  
}

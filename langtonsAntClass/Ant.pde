int ANTUP =0;
int ANTRIGHT =1;
int ANTDOWN =2;
int ANTLEFT =3;

class Ant{
  int myx;
  int myy;
  int mysymb;
  int dir;
  
  // constructor 
  Ant(int x, int y, int symb){
    myx = x;
    myy = y;
    mysymb = symb;
    dir = 1;
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
          myy--; 
         }else if (dir == ANTDOWN){
          myy++; 
           
         }else if (dir == ANTRIGHT){
          myx++; 
           
         }else if (dir == ANTLEFT){
          myx--; 
         }
         // check edges
         
         if (myx > width-1) {
          myx =0; 
         } else if (myx < 0){
           myx = width-1;
         }
         
         if (myy > height-1) {
          myy =0; 
         } else if (myy < 0){
           myy = height-1;
         }
         
       }
       
    void moveAnt(){
        int state = antWorld[myx][myy];
  
        if (state == 0){
            turnRight();
            antWorld[myx][myy] = mysymb; // places ant symbol
            moveForward(); 
        }else if (state >= 1){    // one or two for ant symbol
            turnLeft();
            antWorld[myx][myy] = 0;
            moveForward();
        }
            }


  
}

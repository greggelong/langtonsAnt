// ant class
// will not have a show function as the world is shown

let ANTUP =0;
let ANTRIGHT =1;
let ANTDOWN =2;
let ANTLEFT =3;

class Ant{
    constructor(x,y,clr){
        this.x = x;
        this.y =y;
        this.clr =clr; // color is either 1 or 2 as it is marks which ant in the ant world
        this.dir = 0;
        this.sz = 10;
    }

    turnRight(){
        this.dir++; 
         if (this.dir > ANTLEFT){
           this.dir = ANTUP;
         }
       }
       
       
    turnLeft(){
        this.dir--;
         if (this.dir < ANTUP){
           this.dir = ANTLEFT;
         }
       }
       
    moveForward(){
         if (this.dir == ANTUP){
          this.y--; 
         }else if (this.dir == ANTDOWN){
          this.y++; 
           
         }else if (this.dir == ANTRIGHT){
          this.x++; 
           
         }else if (this.dir == ANTLEFT){
          this.x--; 
         }
         // check edges
         
         if (this.x > 80-1) {
          this.x =0; 
         } else if (this.x < 0){
           this.x = 80-1;
         }
         
         if (this.y > 80-1) {
          this.y =0; 
         } else if (this.y < 0){
           this.y = 80-1;
         }
         
       }
       
    moveAnt(){
        let state = antworld[this.x][this.y];
  
        if (state == 0){
            this.turnRight();
            antworld[this.x][this.y] = this.clr; // places ant symbol
            this.moveForward(); 
        }else if (state >= 1){    // one or two for ant symbol
            this.turnLeft();
            antworld[this.x][this.y] = 0;
            this.moveForward();
        }
            }






}
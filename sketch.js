//
// the code is based on Coding Challenge #89: Langton's Ant
// coding this in p5 and processing.
// coded while watching shiffmans processing video any bugs;) introduced are my own. 

// I am redering this on canvas and have a couple of other functins for creating the antworld and displaying it.

let sz =10
let col =80;
let row =80;
let antworld;
let x, y;   //for ant

let ANTUP =0;
let ANTRIGHT =1;
let ANTDOWN =2;
let ANTLEFT =3;

let dir=0;

function setup() {
  createCanvas(800, 800);
  //stroke(255,190,0);
  stroke(0);
  
  antworld = twoDee(col,row,0);
  x = 40;
  y =40;
  

  showWorld();
  
  
}



function twoDee(col, row,data){
  // makes a two 2 array fills it with data and returns it
  arr = new Array(col);
  for (let i =0; i< arr.length; i++){
    arr[i] = new Array(row);
  }
  
  for (let i =0; i <col;i++){
    for(let j =0; j< row;j++){
      arr[i][j] = data;
    }
  }
  return arr;
  
} 

function turnRight(){
 dir++; 
  if (dir > ANTLEFT){
    dir = ANTUP;
  }
}


function turnLeft(){
 dir--;
  if (dir < ANTUP){
    dir = ANTLEFT;
  }
}

function moveForward(){
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

function draw(){
  
  print(x,y);
  for (let n =0; n< 50; n++){
  
  
  let state = antworld[x][y];
  
  if (state == 0){
    turnRight();
    antworld[x][y] = 1;
    moveForward(); 
  }else if (state == 1){
    turnLeft();
    antworld[x][y] = 0;
    moveForward();
   }
    
    
 }
  
  showWorld();
  
}



function showWorld(){
  background(0);
  
  for (let i =0; i <col;i++){
    for(let j =0; j< row;j++){
      if (antworld[i][j] == 0){
        fill(0); // nothing
      }else{
        fill(255,191,0)
      }
      rect(i*sz,j*sz,sz,sz);
    }
  }
  
}

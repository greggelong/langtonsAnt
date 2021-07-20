//
// the code is based on Coding Challenge #89: Langton's Ant
// coding this in p5 and processing.
// coded while watching shiffmans processing video any bugs;) introduced are my own. 

// I am redering this on canvas and have a couple of other functins for creating the antworld and displaying it.

let sz =10
let col =80;
let row =80;
let antworld;
let gregAnt;
let mybox;
let myslider;
let sd;
 

function setup() {
  createCanvas(800, 800);
  //stroke(255,190,0);
  mybox = createCheckbox('if checked there are two ants', true);
  stroke(0);
  sd= createP("Slider = Number of steps per frame: 1 to 100");
  myslider = createSlider(1, 100, 1, 1);
 
  antworld = twoDee(col,row,0);
  gregAnt = new Ant(floor(random(20,60)),floor(random(20,60)),1);  //Ant(loc,loc,Symbol for array);
  mjAnt = new Ant(floor(random(20,60)),floor(random(20,60)),2)
  

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


function draw(){
  
  for (let n =0; n< myslider.value(); n++){
  
  gregAnt.moveAnt();
  if (mybox.checked()){
    mjAnt.moveAnt();
  }
    
    
 }
  
  showWorld();
  
}



function showWorld(){
  background(0);
  
  for (let i =0; i <col;i++){
    for(let j =0; j< row;j++){
      if (antworld[i][j] == 1){
        fill(255,191,0); // ant color 1
      }else if(antworld[i][j]== 2 ){
        fill(200,50,0);
      }else{
        fill(0);
      }
      rect(i*sz,j*sz,sz,sz);
    }
  }
  
}

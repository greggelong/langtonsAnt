Ant gregAnt;
Ant mjAnt;

int [][] antWorld;
int x,y;


void setup(){
 size(800,800); 
 antWorld = new int[width][height];
 
 gregAnt = new Ant(400,400, 1);
 //int off = floor(random(1,40));
 int offx = floor(random(1,200));
 int offy = floor(random(1,200));
 println(offx,offy);
 // in order to get oscilliation you need to vary both offx and offy at different
 // amounts if offx and offy are equal (at an angle or cooridinate plane) no oscill
 
 mjAnt = new Ant(400+offx,400+offy,2);
 
 showWorld();
 
 
}

void draw(){
  // for loop for n steps per animation frame
  for (int n =0; n<200; n++){
    gregAnt.moveAnt();
    mjAnt.moveAnt();
    
  }
  
  showWorld();
  
 
}


void showWorld(){
  loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int pix = i + width * j;
      if (antWorld[i][j] == 0) {
        pixels[pix] = color(30);
      } 
      else if (antWorld[i][j] == 1){
        pixels[pix] = color(255,191,0);
      }
      else if (antWorld[i][j] == 2){
        pixels[pix] = color(200,50,0);
      }
    }
  }
  updatePixels();
   
  
  
  
  
  
  
}

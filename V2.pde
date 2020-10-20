PImage metal; //sets global variable metal as type PImage
int shipCount = 2;
Ship[] ship = new Ship[shipCount];

class Ship {
  int xpos;
  int ypos;
  int rotation;
  PImage shipImage;
  boolean active;
  Ship (int _xpos, int _ypos, int _rotation, PImage _shipImage, boolean _active){
    xpos = _xpos;
    ypos = _ypos;
    rotation = _rotation;
    shipImage = _shipImage;
    active = _active;
  }
 
}


void setup() {
  size(500,500);
  metal = loadImage("MetalBackground.jpg");//instantiates variable "metal" as loadimage
  for (int i = 0; i <= shipCount - 1; i++){
    int xpos = (int)random(0,width);
    int ypos = (int)random(0,height);
    int rotation = 0;
    PImage shipImage = loadImage("SpaceShip1.jpg");
    boolean active = true;
    ship[i] = new Ship(xpos,ypos,rotation,shipImage,active);
    
  }
}
void draw(){
  background(255);
  metal.resize(500,500);
  ship1.resize(70,30);//sets size of ships
  ship2.resize(40,30);
  image(metal,0,0);
  image(ship1, 0,0); //spawns the ships to test sizing.
  image(ship2, 30,30);
  
 // if (mouseX >250){
  //  Ramount = int(random(45,90));
  //}
  //else if (mouseX <250){
  //  Ramount = int(random(0,45));
  //}
  //else if (mouseY <250){
  //  TAmount =int(random(0));
  //}
}
void mouseMoved(){
  
}  
  
//void draw() {
 // background(0);
 // image(metal,0,0);
 // if (metal.height < 50){
  //  direction = 1;
 // }
 // else if(metal.height > 1199){
 //   direction = -1;
 // }
 // int width = metal.width + direction;
 // int height = metal.height + direction;
  //metal.resize(width, height);
//}

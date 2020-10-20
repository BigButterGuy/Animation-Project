PImage metal; //sets global variable metal as type PImage
int shipCount = 10;
Ship[] ship = new Ship[shipCount];

class Ship {
  int xpos;
  int ypos;
  int rotation;
  PImage shipImage;
  boolean active;
  Ship (int _xpos, int _ypos, int _rotation, PImage _shipImage, boolean _active) {
    xpos = _xpos;
    ypos = _ypos;
    rotation = _rotation;
    shipImage = _shipImage;
    active = _active;
    shipImage.resize(70, 30);
  }
  void draw() {
    image(shipImage, xpos, ypos);
  }
  int getX() {
    return xpos;
  }
  int getY() {
    return ypos;
  }
  void setX(int x) {
    xpos = x;
  }
  void setY(int y) {
    ypos = y;
  }
  //void rotate(int angle) {
  //  shipImage.translate(shipImage.width/2, shipImage.height/2);
  //  shipImage.rotate(angle);
  //}
}


void setup() {
  size(500, 500);
  metal = loadImage("MetalBackground.jpg");//instantiates variable "metal" as loadimage
  metal.resize(500, 500);
  image(metal, 0, 0);
  for (int i = 0; i <= shipCount - 1; i++) {
    int shiptype = (int)random(0, 10);
    int xpos = (int)random(0, width);
    int ypos = (int)random(0, height);
    int rotation = 0;
    PImage shipImage;
    if (shiptype < 5){
    shipImage = loadImage("SpaceShip1.jpg");
    }
    else {
    shipImage = loadImage("SpaceShip2.jpg");
    }
    boolean active = true;
    ship[i] = new Ship(xpos, ypos, rotation, shipImage, active);
  }
}
void draw() {
  for (int i = 0; i <= shipCount -1; i++) {
    ship[i].draw();
  }

  for (int i = 0; i <= shipCount -1; i++) {
    if (ship[i].getX() < mouseX) {
      ship[i].setX(ship[i].getX() + 1);
    } else if (ship[i].getX() > mouseX) {
      ship[i].setX(ship[i].getX() - 1);
    }
    if (ship[i].getY() < mouseY) {
      ship[i].setY(ship[i].getY() + 1);
    } else if (ship[i].getY() > mouseY) {
      ship[i].setY(ship[i].getY() - 1);
    }
  }
}

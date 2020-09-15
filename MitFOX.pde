int i = 0;
void setup()
{
  size(400, 400 );
  noStroke();
  FoxCon.draw();
}
Fox FoxCon = new Fox();
void draw() {
  
  fill(255,0,0);
  rect(300,175,50,50);
  if(FoxCon.getHP()<= 0){
  textSize(32);
  background(192);
  
  text("Game over", 50, 50);
  }
  else{
  textSize(32);
  text("Health remainded: " + FoxCon.getHP(), 50, 50);
}
}

void keyPressed(){
  if(keyCode == RIGHT){
      background(192);
      FoxCon.moveRight();
  }
  else  if(keyCode  == LEFT){
      background(192);
      FoxCon.moveLeft();
    }
  else  if(keyCode  == UP){
      background(192);
      FoxCon.moveUp();
    }
  else  if(keyCode  == DOWN){
      background(192);
      FoxCon.moveDown();
    }
}

class Fox {
  int x;
  int y;
  int HP = 5;
  boolean status = true;
  Fox() {
  }
  void draw() {
    x = 200;
    y = 200;
    fill(250);
    rect(x-25, y-25, 50, 50);
  }
  void moveLeft() {
    x = x - 2;
    fill(250);
    rect(x-25, y-25, 50, 50);
    delay(1);
  }
  void moveRight(){
    x = x + 2;
    fill(250);
    rect(x-25, y-25, 50, 50);
    delay(1);
  }
  void moveUp(){
    y = y - 2;
    fill(250);
    rect(x-25, y-25, 50, 50);
    delay(1);
  }
  void moveDown(){
    y = y + 2;
    fill(250);
    rect(x-25, y-25, 50, 50);
    delay(1);
  }
  int getHP(){
    
    if(x >=  275&& x <= 375 && y >=  150&& y <= 250) {
      if(status == false){
      status = true;
      HP = HP -1;
    }
      
    }
     else{
       status = false;
     }
    
    return(HP);
  }
}

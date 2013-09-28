class Player {
  float x, y;
  Gif animation;
  public Player(PApplet gfx) {
    this.x = width/2;
    this.y = height/2;
    animation = new Gif(gfx, "player0.gif");
  }
  void draw(float r) {
    int x =0;
    if (r ==10) {
      x =0;
    } 
    else if (r > ((1/8)*-1)*PI) {
      if (r < 1/8*PI) {
        x = 2;
      } 
      else if (r <= (3/8)*PI) {
        x = 3;
      } 
      else if (r <= (5/8)*PI) {
        x = 0;
      } 
      else if (r <= (7/8)*PI) {
        x = 4;
      } 
      else {
        x = 5;
      }
    } 
    else {
      if (r >= -1*(3/8)*PI) {
        x = 1;
      } 
      else if (r >= -1*(5/8)*PI) {
        x = 0;
      } 
      else if (r>= -1*(7/8)*PI) {
        x = 6;
      }
      else{
        x = 5;
      }
    }

    image(animation, this.x-35, this.y-35, 70.0, 70.0);
  }
}


public class Trapezoid extends Shape{
  Trapezoid(PApplet gfx, float x,float y, Player player, Map map){
   super(gfx, x,y, player,4, map);
   float h = sqrt(size*size + (size/2)*(size/2));
   corners[0] = new PVector(-h/2,-h/2);
   corners[1] = new PVector(h/2,-h/2);
   corners[3] = new PVector(-size,h/2);
   corners[2] = new PVector(size,h/2);
  }
  
  boolean killMe(){
    map.toRemove.add(this);
    return true;
  }

}

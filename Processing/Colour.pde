class Colour{
  color col;
  PVector location, size;
  
  Colour(color c, PVector l){
    col = c;
    location = l;
    size = new PVector(width / 3, height / 2);
  }
  
  void Draw(){
    fill(col);
    rect(location.x, location.y, size.x, size.y);
  }
}
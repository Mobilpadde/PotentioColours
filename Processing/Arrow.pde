class Arrow{
  PVector size, location;
  
  Arrow(){
    size = new PVector(10, 10);
    location = new PVector(width / 2 - size.x, height - size.y);
  }
  
  void Draw(float angle){
    pushMatrix();
    PVector angleVector = PVector.fromAngle(angle);
    angleVector.normalize();
    
    translate(location.x, location.y);
    rotate(atan2(angleVector.x, angleVector.y));
    
    fill(255);
    ellipse(0, 0, size.x, size.y);
    triangle(-5, -2, 5, -2, 0, -12);
    popMatrix();
  }
}
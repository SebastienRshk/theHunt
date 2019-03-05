class Ripple {
  PVector pos;
  
  float size = 25;
  float growthStroke = 5;
  float distanceMax = 500;
  
  float easing = 0.05;
    
  boolean isDead = false;
  
  Ripple(PVector playerPos){
   pos = playerPos; 
  }
    
  public void update(){
    if (size <= distanceMax -1){
      //float remaining = distanceMax - size;
      float growthStroke = distanceMax - size;
      size += growthStroke * easing;
    }   
    else {
     isDead = true; 
    }
  }
  
  public void render(){
      stroke(0,0,0,map(size, 0, distanceMax, 255, 0));
      strokeWeight(1);
      ellipse(pos.x, pos.y, size, size);
  }
}

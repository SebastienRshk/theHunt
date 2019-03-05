ArrayList <Ripple> ripples = new ArrayList<Ripple>();

PVector playerPos;

void setup(){
 size(800, 600);
 background(255);
 
 playerPos = new PVector(width*0.5, height*0.5);
}

void draw(){
 background(255);
 
 noFill();
 
 if (ripples != null){
   for(int i = 0; i < ripples.size(); i++){
     Ripple ripple = ripples.get(i);
     ripple.update();
     ripple.render();
     
     if (ripple.isDead){
       ripples.remove(ripple);
     }
   }
 }
}

void mouseClicked(){
  ripples.add(new Ripple(playerPos));
}

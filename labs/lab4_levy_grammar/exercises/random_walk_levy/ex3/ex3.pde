PVector CENTER_SCREEN;
float ALPHA_BACKGROUND=0;
int MONTECARLO_STEPS=1;
float MAX_DISTANCE;

Walker walker;
void setup() {
  size(1280,720);

  walker=new Walker();  // Create a walker object
  background(0);
  CENTER_SCREEN=new PVector(width/2, height/2);
  PVector maxDistVec = new PVector(width,height).sub(CENTER_SCREEN);
  MAX_DISTANCE = maxDistVec.magSq();
}

void draw() {
  // Run the walker object
  fill(0, ALPHA_BACKGROUND);
  strokeWeight(0);
  rect(0,0,width, height);
  walker.update();
  walker.draw();  
}

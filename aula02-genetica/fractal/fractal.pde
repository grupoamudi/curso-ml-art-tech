CA ca;

void setup(){
  size(800,400);
  background(255);
  ca = new CA();
}

void draw(){
  ca.display();
  if (ca.geracoes < ca.no){
    ca.gera();
  }
}

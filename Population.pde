class Population {
  
  int size;
  ArrayList<Creature> critters = new ArrayList<Creature>();
  ArrayList<Creature> matingPool = new ArrayList<Creature>();

  Population(int _size) {
    
    size = _size;
    
    for (int i = 0; i < size; i++) {
      critters.add(new Creature());
    }
  }

  void live() {
    if (age < lifespan) {
      for (Creature c : critters) {
        c.move();
        c.display();
      }
    }
    age++;
    
    if (age == lifespan) {
      computeFitness();
      makeMatingPool();
      breed();
      age = 0;
    }
  }
  
  void computeFitness(){
    for(Creature c : critters){
      float separation = dist(endx, endy, c.x, c.y);
      c.fitness = map(separation, 0, 2000, 100, 0);
    }
  }
  
  void makeMatingPool(){
    matingPool.clear();
    for(Creature c : critters){
      for(int i = 0; i < c.fitness; i++ ){
        matingPool.add(c); 
      }
    }
  }
  
  void breed(){
    critters.clear();
    for(int i =0; i < size; i++){
      int m = (int)random(0, matingPool.size());
      int n = (int)random(0, matingPool.size());
      Creature mommy = matingPool.get(m);
      Creature daddy = matingPool.get(n);
      Creature child = new Creature();
      for(int j = 0; j < lifespan; j++){
        if(random(1) < 0.5) child.dna[j] = mommy.dna[j]; 
        else child.dna[j] = daddy.dna[j]; 
      }
    }
  }
}

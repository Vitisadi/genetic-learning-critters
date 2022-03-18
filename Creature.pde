class Creature {
  float x, y;
  float size;
  Direction[] dna; 
  float fitness;

  Creature() {
    x = startx;
    y = starty;
    dna = new Direction[lifespan];
    for (int i = 0; i < lifespan; i++) {
      dna[i] = new Direction();
    }
    size = 20;
  }
  
  void display() {
    fill(255);
    stroke(0);
    rect(x, y, size, size, 3);
  }
  
  void move() {
    if (dna[age].d == 0) x = x - dna[age].amount;
    if (dna[age].d == 1) x = x + dna[age].amount;
    if (dna[age].d == 2) y = y - dna[age].amount;
    if (dna[age].d == 3) y = y + dna[age].amount;
  }
}

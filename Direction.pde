class Direction {
 int d;      // 0 = left, 1 = right, 2 = up, 3 = down
 int amount; // number of pixels to move in direction d
  
 Direction() {
   reset();
 }
 
 void reset() {
   amount = 20;
   d = (int)random(0, 4);
 }
  
}
class FlowField {
  PVector[][] field;
  int cellW, cellH;
  int cols, rows;
  int noiseScale = 1000;
  FlowField(int _cols, int _rows) {
    cols = _cols;
    rows = _rows;
    cellW = width/cols;
    cellH = height/rows;
    field = new PVector[cols][rows];
    init();
  }
  
  void init() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        float x = i * cellW;
        float y = j * cellH;
        float theta = map(noise(x/noiseScale, y/noiseScale), 0, 1, 0, TWO_PI);
        PVector v = new PVector(cos(theta), sin(theta));
        field[i][j] = v;
      }
    }
  }
  
  void display() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        pushMatrix();
        translate(i*cellW, j*cellH);
        rotate(field[i][j].heading());
        scale(0.25);
        
        shape(arrow, -arrow.width/2, -arrow.height/2);
        popMatrix();
      }
    }
  }
  
  PVector lookup(PVector lookup){
    int col = int(constrain(lookup.x/cellW, 0, cols-1));
    int row = int(constrain(lookup.y/cellH, 0, rows-1));
    return field[col][row].copy();
  }
}

// KP - S26 - VL Beispiele: Pixel Raster (Grid)

size(255, 255);
smooth();
stroke(70);

for (int x = 0; x < 51; x = x+1) {
  for (int y = 0; y < 51; y = y+1) {
    fill(x*5,30,y*5);
    rect(x*5, y*5, 5, 5);
  }  
}

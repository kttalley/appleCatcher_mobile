float sunNoise = 0;
float sunNoiseRate = 0.1;
void sun(float x, float y, float sze) {
  sunNoise += sunNoiseRate;
  if (sunNoise > 5) {
    sunNoiseRate = -0.1;
  }
  if (sunNoise < -5) {
    sunNoiseRate = 0.1;
  }
  translate(x, y, sze);
  scale(sze);
  fill(255, 255, 0, 200);
  ellipse(0, 0, 50 + sunNoise);
  fill(255, 255, 0, 150);
  ellipse(0, 0, 75 + sunNoise);
  fill(255, 255, 100, 100);
  ellipse(0, 0, 100 + sunNoise);
  fill(255, 255, 0, 50);
  ellipse(0, 0, 125 + sunNoise);
  fill(255, 255, 0, 25);
  ellipse(0, 0, 150 + sunNoise);
  resetMatrix();
}

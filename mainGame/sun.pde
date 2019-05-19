class Sun {
  float xpos, ypos, sunSize, sunNoise, sunNoiseRate, SN, SNR;
  Sun(float x, float y, float sze, float sunNoise, float sunNoiseRate) {
   xpos = x;
   ypos = y;
   sunSize = sze; 
   SN = sunNoise;
   SNR = sunNoiseRate;
  }
  
  void update() {
    SN += SNR;
    if (SN > 5) {
      SNR = -0.2;
    }
    if (SN < -5) {
      SNR = 0.2;
    }
  }
  
  void show() {
    translate(xpos, ypos);
    scale(sunSize);
    fill(255, 255, 0, 200);
    ellipse(0, 0, 50 + SN, 50 + SN);
    fill(255, 255, 0, 150);
    ellipse(0, 0, 75 + SN, 75 + SN);
    fill(255, 255, 100, 100);
    ellipse(0, 0, 100 + SN, 100 + SN);
    fill(255, 255, 0, 50);
    ellipse(0, 0, 125 + SN, 125 + SN);
    fill(255, 255, 0, 25);
    ellipse(0, 0, 150 + SN, 150 + SN);
    resetMatrix();
 
    
  }
  
}

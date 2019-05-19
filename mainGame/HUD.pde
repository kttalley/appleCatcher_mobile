void HUD() {
  fill(255);
  textSize(16* displayDensity);
  text("Chances left: ", (50* displayDensity), (105* displayDensity));
  if(chances == 3 ){
  
      translate(150* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0, 0);
      resetMatrix();
  

      translate(170* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0, 0);
      resetMatrix();

    
      translate(190* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0, 0);
    resetMatrix();
    
  }
   if(chances == 2 ){
  
      translate(150* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0, 0);
      resetMatrix();
  

      translate(170* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0, 0);
      resetMatrix();
    
  }
   if(chances == 1 ){
  
      translate(150* displayDensity, 90* displayDensity);
      scale(0.55* displayDensity);
      image(catchMe,0* displayDensity, 0* displayDensity);
      resetMatrix();
  }
  text("Level: " + level, 50* displayDensity, 25* displayDensity);
  text("Score: " + score, 50* displayDensity, 75* displayDensity);
}

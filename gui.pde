void keyPressed()  // executed each time a key is pressed: sets the Boolean "keyPressed" till it is released   
                   // sets  char "key" state variables till another key is pressed or released
    { 
    if(key=='~') recordingPDF=true; // to snap an image of the canvas and save as zoomable a PDF, compact and great quality, but does not always work
    if(key=='!') snapJPG=true; // make a .PDF picture of the canvas, compact, poor quality
    if(key=='@') snapTIF=true; // make a .TIF picture of the canvas, better quality, but large file
    if(key=='#') ;
    if(key=='$') ;
    if(key=='%') ;
    if(key=='^') ;
    if(key=='&') ; 
    if(key=='*') ;    
    if(key=='(') ;
    if(key==')') ;  
    if(key=='_') println("GlobalX = " + globalX + ", GlobalY = " + globalY + ", GlobalZ = " + globalZ + ",\nGlobalScale = " + globalScale + "\nGlobal Rotation Matrix: \n [" + globalrX[0] + ", " + globalrY[0] + ", " + globalrZ[0] + "]\n [" + globalrX[1] + ", " + globalrY[1] + ", " + globalrZ[1] + "]\n [" + globalrX[2] + ", " + globalrY[2] + ", " + globalrZ[2] + "]");
    if(key=='+') ;

    if(key=='`') filming=!filming;  // filming on/off capture frames into folder IMAGES/MOVIE_FRAMES_TIF/
    if(key=='1') ;                  
    if(key=='2') ;
    if(key=='3') ;
    if(key=='4') globalX -= 5;
    if(key=='5') globalY += 5;
    if(key=='6') globalX += 5;
    if(key=='7') globalZ -= 5; 
    if(key=='8') globalY -= 5;
    if(key=='9') globalZ += 5;
    if(key=='0') ;
    if(key=='-') ;
    if(key=='=') ;

    if(key=='a') ;
    if(key=='b') ; 
    if(key=='c') ; 
    if(key=='d') ;  
    if(key=='e') ;
    if(key=='f') ;
    if(key=='g') ; 
    if(key=='h') ;
    if(key=='i') ;
    if(key=='j') ;
    if(key=='k') ; 
    if(key=='l') ;
    if(key=='m') ;
    if(key=='n') ;
    if(key=='o') ;  
    if(key=='p') ;
    if(key=='q') ; 
    if(key=='r') ;
    if(key=='s') ;
    if(key=='t') showTestJoint=!showTestJoint; 
    if(key=='u') ;
    if(key=='v') ; 
    if(key=='w') ; 
    if(key=='x') ;
    if(key=='y') ;
    if(key=='z') ; 

    if(key=='A') { //Preset to show Origin
      globalX=0; 
      globalY=0.0; 
      globalZ=225.0; 
      globalrX[0] = 1;
      globalrX[1] = 0;
      globalrX[2] = 0;
      globalrY[0] = 0;
      globalrY[1] = 1;
      globalrY[2] = 0;
      globalrZ[0] = 0;
      globalrZ[1] = 0;
      globalrZ[2] = -1;
      globalScale=1.0;
    }
    if(key=='B') ;  
    if(key=='C') { //Preset. Should be hands somewhat center
      globalX=0; 
      globalY=-150.0; 
      globalZ=270.0; 
      globalrX[0] = 1;
      globalrX[1] = 0;
      globalrX[2] = 0;
      globalrY[0] = 0;
      globalrY[1] = 1;
      globalrY[2] = 0;
      globalrZ[0] = 0;
      globalrZ[1] = 0;
      globalrZ[2] = -1;
      globalScale=1.0;
    }
    if(key=='D') ;  
    if(key=='E') ;
    if(key=='F') ;
    if(key=='G') ; 
    if(key=='H') ; 
    if(key=='I') ; 
    if(key=='J') ;
    if(key=='K') ;
    if(key=='L') ;
    if(key=='M') ; 
    if(key=='N') ;
    if(key=='O') showOrigin=!showOrigin;
    if(key=='P') ;
    if(key=='Q') ;
    if(key=='R') { //RESET presets
      globalX=0;   
      globalY=0; 
      globalZ=0; 
      globalrX[0] = 1;
      globalrX[1] = 0;
      globalrX[2] = 0;
      globalrY[0] = 0;
      globalrY[1] = 1;
      globalrY[2] = 0;
      globalrZ[0] = 0;
      globalrZ[1] = 0;
      globalrZ[2] = 1; 
      globalScale=1.0;
    }
    if(key=='S') ;
    if(key=='T') { //If using the matrices to render the camera, this gets a top-down view
      globalX=0; 
      globalY=65.0; 
      globalZ=525.0; 
      globalrX[0] = 1;
      globalrX[1] = 0;
      globalrX[2] = 0;
      globalrY[0] = 0;
      globalrY[1] = 1;
      globalrY[2] = 0;
      globalrZ[0] = 0;
      globalrZ[1] = 0;
      globalrZ[2] = -1; 
      globalScale=1.0;
    }
    if(key=='U') ;
    if(key=='V') ; 
    if(key=='W') ; 
    if(key=='X') ; 
    if(key=='Y') ;
    if(key=='Z') ;  

    if(key=='{') ;
    if(key=='}') ;
    if(key=='|') ; 
    if(key=='[') ;
    if(key==']') ; 
    if(key=='\\') ;
    if(key==':') ; 
    if(key=='"') ;    
    if(key==';') ; 
    if(key=='\'') ;    
    if(key=='<') ;
    if(key=='>') ;
    if(key=='?') ;
    if(key==',') globalScale -= 0.2; 
    if(key=='.') globalScale += 0.2;
    if(key=='/') ; 
  
    if(key==' ') ;
  
    if (key == CODED) 
       {
       String pressed = "Pressed coded key ";
       if (keyCode == UP) {globalY -= 5;   }
       if (keyCode == DOWN) {globalY += 5;   };
       if (keyCode == LEFT) {globalX -= 5;   };
       if (keyCode == RIGHT) {globalX += 5;   };
       if (keyCode == ALT) {;   };
       if (keyCode == CONTROL) {;   };
       if (keyCode == SHIFT) {;   };
       //println("Pressed coded key = "+pressed); 
       } 
    //println("key pressed = "+key);
    }

void mousePressed()   // executed when the mouse is pressed
  {
 
  }

void mouseDragged() // executed when the mouse is dragged (while mouse buttom pressed)
  {
  }

void mouseWheel(MouseEvent event) // reads mouse wheel and uses to zoom
  { 
  
  }

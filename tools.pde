//**** PICTURES
void snapPictureToJPG() {saveFrame("../IMAGES/PICTURES_JPG/"+PicturesFileName+nf(pictureCounterJPG++,3)+".jpg"); snapJPG=false;}
void snapPictureToTIF() {saveFrame("../IMAGES/PICTURES_TIF/"+PicturesFileName+nf(pictureCounterTIF++,3)+".tif"); snapTIF=false;}
void snapFrameToTIF(){saveFrame("../IMAGES/MOVIE_FRAMES_TIF_DELETE_AFTERWARDS/F"+nf(frameCounter++,4)+".tif");} 
void startRecordingPDF(){beginRecord(PDF,"../IMAGES/PICTURES_PDF/"+PicturesFileName+nf(pictureCounterPDF++,3)+".pdf"); }
void endRecordingPDF()  {endRecord(); recordingPDF=false;}
      /****************************
      To make a movie : 
      reduce canvas size to produce smaller size movie file, 
        for example size(400, 400) if more resolution is not needed  
      Press '`' to start filming,
      press '`' to pause and again to restart and then pause, as desired
      Then, from within your Processing sketch, 
      from the processing menu, select: Tools > Movie Maker. 
      Click on Choose… Navigate to your Sketch Folder. 
      Select the folder IMAGES/MOVIE_FRAMES_TIF_DELETE_AFTERWARDS 
      Press Create Movie, 
      Select the parameters you want. 
      
      WARNING: This may not work for a large canvas!
      MAKE SURE THAT YOU DELETE THE MOVIE_FRAMES_TIF_DELETE_AFTERWARDS folder before submitting !!!
      ****************************/
  
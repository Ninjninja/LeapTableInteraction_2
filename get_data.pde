class Hands {
  DataTable data = HV.loadSpreadSheet(HV.loadSSConfig().sourceFile("/home/niranjan/Projects/VR/csvexample3.csv"));
  //PVector thumbDip, thumbMcp, thumbPip; 
  //PVector indexTip, indexDip, indexPip, indexMcp;
  //PVector ringTip, ringDip, ringPip, ringMcp;
  //PVector middleTip, middleDip, middlePip, middleMcp;
  //PVector pinkyTip, pinkyDip, pinkyPip, pinkyMcp;
  //PVector armWrist, armElbow;
  DataSeries distal_next = data.get(0);
  
  Object distal_next_thumb = distal_next.get(0);
  String distal_next_thumb_str = String.valueOf(distal_next_thumb);
  PVector thumbTip = str2PVector(distal_next_thumb_str);

  Object distal_next_index = distal_next.get(1);
  String distal_next_index_str = String.valueOf(distal_next_index);
  PVector indexTip = str2PVector(distal_next_index_str);

  Object distal_next_middle = distal_next.get(2);
  String distal_next_middle_str = String.valueOf(distal_next_middle);
  PVector middleTip = str2PVector(distal_next_middle_str);
  
  Object distal_next_ring = distal_next.get(3);
  String distal_next_ring_str = String.valueOf(distal_next_ring);
  PVector ringTip = str2PVector(distal_next_ring_str);
  
  Object distal_next_little = distal_next.get(4);
  String distal_next_little_str = String.valueOf(distal_next_little);
  PVector littleTip = str2PVector(distal_next_little_str);
  
  DataSeries intermediate_next = data.get(1);
  
  Object intermediate_next_thumb = intermediate_next.get(0);
  String intermediate_next_thumb_str = String.valueOf(intermediate_next_thumb);
  PVector thumbDip = str2PVector(intermediate_next_thumb_str);

  Object intermediate_next_index = intermediate_next.get(1);
  String intermediate_next_index_str = String.valueOf(intermediate_next_index);
  PVector indexDip = str2PVector(intermediate_next_index_str);

  Object intermediate_next_middle = intermediate_next.get(2);
  String intermediate_next_middle_str = String.valueOf(intermediate_next_middle);
  PVector middleDip = str2PVector(intermediate_next_middle_str);
  
  Object intermediate_next_ring = intermediate_next.get(3);
  String intermediate_next_ring_str = String.valueOf(intermediate_next_ring);
  PVector ringDip = str2PVector(intermediate_next_ring_str);
  
  Object intermediate_next_little = intermediate_next.get(4);
  String intermediate_next_little_str = String.valueOf(intermediate_next_little);
  PVector littleDip = str2PVector(intermediate_next_little_str);
  
  DataSeries proximal_next = data.get(3);
  
  Object proximal_next_thumb = proximal_next.get(0);
  String proximal_next_thumb_str = String.valueOf(proximal_next_thumb);
  PVector thumbMip = str2PVector(proximal_next_thumb_str);

  Object proximal_next_index = proximal_next.get(1);
  String proximal_next_index_str = String.valueOf(proximal_next_index);
  PVector indexMip = str2PVector(proximal_next_index_str);

  Object proximal_next_middle = proximal_next.get(2);
  String proximal_next_middle_str = String.valueOf(proximal_next_middle);
  PVector middleMip = str2PVector(proximal_next_middle_str);
  
  Object proximal_next_ring = proximal_next.get(3);
  String proximal_next_ring_str = String.valueOf(proximal_next_ring);
  PVector ringMip = str2PVector(proximal_next_ring_str);
  
  Object proximal_next_little = proximal_next.get(4);
  String proximal_next_little_str = String.valueOf(proximal_next_little);
  PVector littleMip = str2PVector(proximal_next_little_str);  
  
  DataSeries metacarpal_next = data.get(2);
  
  Object metacarpal_next_thumb = metacarpal_next.get(0);
  String metacarpal_next_thumb_str = String.valueOf(metacarpal_next_thumb);
  PVector thumbPip = str2PVector(metacarpal_next_thumb_str);

  Object metacarpal_next_index = metacarpal_next.get(1);
  String metacarpal_next_index_str = String.valueOf(metacarpal_next_index);
  PVector indexPip = str2PVector(metacarpal_next_index_str);

  Object metacarpal_next_middle = metacarpal_next.get(2);
  String metacarpal_next_middle_str = String.valueOf(metacarpal_next_middle);
  PVector middlePip = str2PVector(metacarpal_next_middle_str);
  
  Object metacarpal_next_ring = metacarpal_next.get(3);
  String metacarpal_next_ring_str = String.valueOf(metacarpal_next_ring);
  PVector ringPip = str2PVector(metacarpal_next_ring_str);
  
  Object metacarpal_next_little = metacarpal_next.get(4);
  String metacarpal_next_little_str = String.valueOf(metacarpal_next_little);
  PVector littlePip = str2PVector(metacarpal_next_little_str);  
  //print("yo");
  //DataSeries elbow = data.get(0);
  Object elbow_x_obj = distal_next.get(5);
  Float elbow_xf = Float.parseFloat(String.valueOf(elbow_x_obj));  
  Object elbow_y_obj = intermediate_next.get(5);
  Float elbow_yf = Float.parseFloat(String.valueOf(elbow_y_obj)); 
  Object elbow_z_obj = metacarpal_next.get(5);
  Float elbow_zf = Float.parseFloat(String.valueOf(elbow_z_obj)); 
  PVector armElbow = new PVector(elbow_xf, elbow_yf, elbow_zf);
  
  DataSeries metacarpal_prev = data.get(4);
  
  Object metacarpal_prev_little = metacarpal_prev.get(4);
  String metacarpal_prev_little_str = String.valueOf(metacarpal_prev_little);
  PVector armWrist = str2PVector(metacarpal_prev_little_str);

//  //DataSeries wrist = data.get(6);
//  Object wrist_x_obj = distal_next.get(6);
//  Float wrist_xf = Float.parseFloat(String.valueOf(wrist_x_obj));  
//  Object wrist_y_obj = intermediate_next.get(6);
//  Float wrist_yf = Float.parseFloat(String.valueOf(wrist_y_obj)); 
//  Object wrist_z_obj = proximal_next.get(6);
//  Float wrist_zf = Float.parseFloat(String.valueOf(wrist_z_obj)); 
//  PVector armWrist = new PVector(wrist_xf, wrist_yf, wrist_zf);
  
  PVector str2PVector (String convertedToString) {
    String convertedToString2 = convertedToString.substring(1,convertedToString.length()-1);
    String[] array = convertedToString2.split("\\,", 5);
    //print(convertedToString);
    //print(array);
    //print(Float.parseFloat(array[0]));
    //print(Float.parseFloat(array[1]));
    //print(Float.parseFloat(array[2]));
    PVector vector;
    vector = new PVector(Float.parseFloat(array[0]),Float.parseFloat(array[2]),Float.parseFloat(array[2]));
    //print(vector);
    return vector;
    //DataTable data = HV.loadSpreadSheet(
    //        HV.loadSSConfig().sourceFile("myspreadsheet.csv").headerRowIndex(2).rowIndex(3).columnIndex(2)
    //    );
  }
}

void setup(){
  size(2000,500);
  background(30,0,0);
}

void draw(){
  //fill(255);  // fillでなくstrokeで線の色を変える
  stroke(0, 97, 0);
  strokeWeight(3);
  //line(500,150,mouseX,mouseY); // 中央からマウスの位置まで線を引く
  if (mouseX != 0 || mouseY != 0) {
    // デフォルトは0,0から中央点に移動しますので、その0,0からの線を削除するように
    line(width/2, height/2, mouseX, mouseY);
  }
}

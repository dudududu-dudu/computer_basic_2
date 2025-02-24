void setup(){
  size(800, 600, P3D); // P3Dにより  3D 変換
  rectMode(CENTER);   // 矩形を中心基準で描画
}

void draw(){
  background(200);  
  translate(width/2, height/2, 0);  // 原点はキャンバスの中心に
  
  // 毎フレーム、frameCount が増加する回転角度を計算
  float angle = radians(frameCount); // 弧度 = 度*π/180
  rotateY(angle);     // y 軸周りに回転する
  
  // 正方形を描画する
  fill(150, 100, 255);
  noStroke();
  rect(0, 0, 200, 200); // 辺の長さが200の正方形を描画する
}

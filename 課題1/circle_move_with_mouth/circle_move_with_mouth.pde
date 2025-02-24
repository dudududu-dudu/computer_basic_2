void setup(){
  size(3000,800, P2D);
  smooth(); // アンチエイリアスを有効にする
  background(235,253,253);  // 背景色を設定する (R, G, B)
}

void draw(){

  fill(107,160,204,50); // 図形の塗りつぶし色を設定 (R, G, B, A)
  stroke(255); // 線の色を設定
  //strokeWeight(5); // 線の太さを設定
  //noStroke();
  ellipse(mouseX,mouseY,200,200);  // 円を描く (x座標, y座標, 横の半径, 縦の半径)
}

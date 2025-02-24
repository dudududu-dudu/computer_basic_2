int numCircles = 50;  // 円の数
float[] xs = new float[numCircles]; // 各円の x 座標
float[] ys = new float[numCircles]; // 各円の y 座標

void setup(){
  size(3000,600);
  smooth();
  background(235,253,253);
  
  // 各円の初期位置をランダムに設定
  for (int i = 0; i < numCircles; i++){
    xs[i] = random(width);
    ys[i] = random(height);
  }
}

void draw(){
  background(235,253,253);

  fill(107,160,204,150);
  stroke(191,0,25);
  //strokeWeight(5);
  //noStroke();
  
  // 各円を描く
  for (int i = 0; i < numCircles; i++){
    ellipse(xs[i], ys[i], 200, 200);
    // 各円の位置をランダムに少し移動させる
    xs[i] += random(-2, 2);
    ys[i] += random(-2, 2);
  }
}

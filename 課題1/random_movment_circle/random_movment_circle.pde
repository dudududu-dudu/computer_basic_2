int numCircles = 20;  // 円の数
float[] xs = new float[numCircles]; // 各円の x 座標
float[] ys = new float[numCircles]; // 各円の y 座標
float[] speedX = new float[numCircles]; // 各円の x 方向の速度
float[] speedY = new float[numCircles]; // 各円の y 方向の速度

void setup(){
  size(2000,800);
  smooth();
  background(235,253,253);
  
  // 各円の位置と速度をランダムに設定
  for (int i = 0; i < numCircles; i++){
    xs[i] = random(width);
    ys[i] = random(height);
    speedX[i] = random(-5, 5);
    speedY[i] = random(-5, 5);
  }
}

void draw(){
  background(235,253,253);  // 背景をリセット

  fill(107,160,204,50);
  stroke(255);
  
  for (int i = 0; i < numCircles; i++){
    ellipse(xs[i], ys[i], 200, 200);
    
    // 速度に従って位置を更新
    xs[i] += speedX[i];
    ys[i] += speedY[i];
    
    // 画面端に当たったら方向を反転
    if (xs[i] < 0 || xs[i] > width) {
      speedX[i] *= -1;
    }
    if (ys[i] < 0 || ys[i] > height) {
      speedY[i] *= -1;
    }
  }
}

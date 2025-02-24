void setup(){
  size(900,900);
  background(191,0,25);
}

void draw(){
  strokeWeight(30);
  line(100,100,800,800); // (始点の x 座標, 始点の y 座標, 直線の終点の x 座標, 直線の終点の y 座標)
  line(800,100,100,800); // 二つの線で×を描く
}

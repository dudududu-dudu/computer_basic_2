int numParticles = 3000;   // 粒子の数
Particle[] particles = new Particle[numParticles];

void setup() {
  size(1500, 1500, P3D);
  noStroke();
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0);          // 黒い背景、星雲の効果を強調する
  translate(width/2, height/2, 0);  // 原点をキャンバスの中心に移動する
  
  // 全体をゆっくりと3D回転させ、立体的な動的効果を演出する
  float t = millis() / 1000.0;
  rotateX(t * 0.5);
  rotateY(t * 0.5);
  rotateZ(t * 0.8);
  
  // すべての粒子を更新して表示する
  for (int i = 0; i < numParticles; i++) {
    particles[i].update();
    particles[i].display();
  }
}

class Particle {
  float angle;       // 水平角
  float phi;         // 垂直角
  float radius;      // 中心からの距離
  float speedAngle;  // 水平回転速度
  float speedPhi;    // 垂直回転速度
  float size;        // 粒子のサイズ
  float brightness;  // 粒子の明度
  
  Particle() {
    // pow(random(1), 2) を利用して均一ではない分布を作り出し、多くの粒子を中心付近に集中させる
    radius = pow(random(1), 2) * 350;
    angle = random(TWO_PI);
    phi = random(PI);
    // 回転速度
    speedAngle = random(0.0005, 0.002);
    speedPhi = random(0.0005, 0.002);
    // 粒子のサイズ
    size = random(2, 8);
    // 初期明度
    brightness = random(100, 255);
  }
  
  void update() {
    angle += speedAngle;
    phi += speedPhi;
    // sin関数を用いて明度を周期的に変化させ、星雲内の明暗変化の効果
    brightness = map(sin(angle * 2 + millis()/2000.0), -1, 1, 100, 255);
  }
  
  void display() {
    // 球面座標を3次元直交座標に変換する
    float x = radius * sin(phi) * cos(angle);
    float y = radius * sin(phi) * sin(angle);
    float z = radius * cos(phi);
    fill(brightness, brightness, brightness, 150);
    pushMatrix();
    translate(x*3, y*5, z); //　星が原点からの位置を調整
    ellipse(0, 0, size, size);
    popMatrix();
  }
}

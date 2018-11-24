# Dynamic
dynamic object

# “运动”主题
## 绘图结果，不会制作和上传gif动图是硬伤！！！
![image](https://github.com/Hello-Oliver/Dynamic/blob/master/1.PNG)
![image](https://github.com/Hello-Oliver/Dynamic/blob/master/2.PNG)
## "运动"主题绘图作业链接
####    [https://github.com/Hello-Oliver/Dynamic](https://github.com/Hello-Oliver/Dynamic)
## 技巧分析
-   这次的实验规模较小，只有一个processing的程序文件，虽然很小，但却很有意思，好好的玩了一把二维平面上的三角函数变化
-   首先是setup()，很简单主要初始化变量、显示大小、背景颜色
```ecmascript 6
//setup runs once 
void setup() {
  a = 0;
  b = 0;
  c = 0;
  size(600, 600);
  background(120);
  //ellipse(width/2, height/2, 300, 300);
}
```
-   想要将一圈的圆拥有流畅的周期变化，不自然而然地将圆的位置和三角函数联系在了一起。首先确定圆的位置，(pos_x + speed*cos(i*pi/n)，pos_y + speed*cos(i*pi/n))，然后再这个基础上加上这个方向的伸缩量50*cos(i*pi/n)*abs(sin(c+i*pi/n)，其中的三角函数用来决定他的周期变化。
```ecmascript 6

//draw a serie of rounds
void serieRound1(int n, int pos_x, int pos_y, int speed, int scale, int b_scale) {
  for (int i = 0; i < 2*n; i++) {
    ellipse(pos_x + speed*cos(i*pi/n)+50*cos(i*pi/n)*abs(sin(c+i*pi/n)), pos_y + speed*sin(i*pi/n)+50*sin(i*pi/n)*abs(sin(c+i*pi/n)), scale, scale);
  }
}

void serieRound2(int n, int pos_x, int pos_y, int speed, int scale, int b_scale) {
  for (int i = 0; i < 2*n; i++) {
    ellipse(pos_x + speed*cos(i*pi/n)-50*cos(i*pi/n)*abs(sin(c+i*pi/n)), pos_y + speed*sin(i*pi/n)-50*sin(i*pi/n)*abs(sin(c+i*pi/n)), scale, scale);
  }
}

```
-   最后在总的draw函数中调用这个函数，基本上就算大功告成了
```ecmascript 6
//draw runs 60 per minutes
void draw() {
  background(20);
  a = a + 0.01;
  b = b + 0.05;
  c = c + 0.05;
  //stroke(255, 30);
  noStroke();
 
  fill(255, 255, 255);
  ellipse(300, 300, 460, 460);
  fill(0, 0, 0);
  ellipse(300, 300, 450, 450);
  
  fill(255, 255, 255);
  ellipse(300, 300, 150, 150);
  fill(0, 0, 0);
  ellipse(300, 300, 140, 140);
  
  fill(255, 20, 20, 90);
  ellipse(300 + 20*cos(b + pi/4), 300 + 20*sin(b + pi/4), 100*sin(b + pi/4), 100*sin(b + pi/4));
  ellipse(300 + 20*cos(b + 3*pi/4), 300 + 20*sin(b + 3*pi/4), 50*sin(b + 3*pi/4), 50*sin(b + 3*pi/4));
  ellipse(300 + 20*cos(b + 5*pi/4), 300 + 20*sin(b + 5*pi/4), 100*sin(b + 5*pi/4), 100*sin(b + 5*pi/4));
  ellipse(300 + 20*cos(b + 7*pi/4), 300 + 20*sin(b + 7*pi/4), 50*sin(b + 7*pi/4), 50*sin(b + 7*pi/4));
  
  fill(255, 200, 20);
  serieRound1(8, 300, 300, 150, 50, 0);
  fill(255, 200, 20, 80);
  serieRound2(8, 300, 300, 150, 50, 0);
  
  //fill(255, 20, 20, 30);
  //ellipse(300+150*cos(pi/2)-50*cos(pi/2), 300+150*sin(pi/2)-50*sin(pi/2), 50, 50);
  //fill(255, 255, 255, 30);
  //ellipse(300+150*cos(pi/2), 300+150*sin(pi/2), 50, 50);
  //fill(20, 255, 20, 30);
  //ellipse(300+150*cos(pi/2)+50*cos(pi/2), 300+150*sin(pi/2)+50*sin(pi/2), 50, 50);
  //fill(255, 200, 20, 30);
  //ellipse(300+150*cos(pi/2)+50*cos(pi/2)*abs(sin(c)), 300+150*sin(pi/2)+50*sin(pi/2)*abs(sin(c)), 50, 50);
}
```
## 
-   绘图思路：
这次码绘的主要思路来源于课上老师展示的一些码绘作品，这些作品大多都与三角函数有关，因为三角函数是周期的，而其他的变化具有连续性而且平滑，这使得在一些等待动画，转屏动画中应用很广。

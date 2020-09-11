int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int clickCount = 0;
int colorR = (int)(Math.random() * 256);
int colorG = (int)(Math.random() * 256);
int colorB = (int)(Math.random() * 256);
void setup()
{
  size(300,300);
  strokeWeight(5);
  background(100);
  stroke(255, 255, 0);
}
void draw()
{
while(endX < 301){
  endX = startX + (int)((Math.random() * 19) - 9);
  endY = startY + (int)(Math.random() * 10);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}
if (clickCount > 5){
  stroke(colorR, colorG, colorB);
}
}
void mousePressed()
{
 clickCount = clickCount + 1;
 startX = 150;
 startY = 0;
 endX = 150;
 endY = 0;
}

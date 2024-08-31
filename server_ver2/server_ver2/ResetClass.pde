class ResetClass
{
  int x, y;
  void resetbutton()
  {
    //黒板消し
    stroke(0);
    strokeWeight(1);
    fill(0,0,100);
    rect(50, 540, 150, 40,20);
    fill(244,164,96);
    rect(45,530,160,20,20);   
    fill(0);
    rect(115,510,20,40);
    fill(255);
    textSize(35);
    textAlign(CENTER, CENTER);
    text("黒板消し", 125, 550);
    //黒板リセット
    fill(0);
    rect(50,650,150,60,10);
    fill(255);
    textSize(30);
    text("リセット",125,680);
  }
  void reset_draw(int _x, int _y)
  {
    x=_x;
    y=_y;
    if (x>=50&&x<=200&&y>=650&&y<=710)
    {
      stroke(0);
      strokeWeight(1);
      fill(0,100,0);
      rect(300, 50, 1000, 700);
      reset_count++;
    }
  }
}

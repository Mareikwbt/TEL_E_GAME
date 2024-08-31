class Marubatsu
{
  int x, y, flag;
  int sentNum(int _x, int _y)
  {
    x=_x;
    y=_y;
    if (mouseX>=1150 && mouseX<=1230 && mouseY>=780 && mouseY<=860)
    {
      flag=1;
    }
    if (mouseX>=1280 && mouseX<=1360 && mouseY>=780 && mouseY<=860)
    {
      flag=2;
    }
    return flag;
  }
  void marubatsu_draw()
  {
    //〇ボタン
    fill(255, 0, 0);
    rect(1150, 780, 80, 80);
    textAlign(CENTER, CENTER);
    textSize(80);
    fill(255);
    text("〇", 1190, 814);
    //×ボタン
    fill(0, 0, 255);
    rect(1280, 780, 80, 80);
    textAlign(CENTER, CENTER);
    textSize(80);
    fill(255);
    text("×", 1320, 814);
  }
}

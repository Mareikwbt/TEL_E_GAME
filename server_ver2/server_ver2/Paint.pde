class Paintdraw
{
  void paint()
  {
    if (button==0)
    {
      if (drawFlag==1)//drawFlagが1の時描画可、2の時は不可
      {
        if (mouseX>=300&&mouseX<=1300&&mouseY>=50&&mouseY<=750)
        {
          stroke(  paintColor_Red, paintColor_Green, paintColor_Blue);
          strokeWeight(paintSize);
          line(x, y, mouseX, mouseY);
        }
      }
    }
  }
}

class PaintColor
{
  int x, y, red, green, blue;
  String paintcolor(int _x, int _y)
  {
    x=_x;
    y=_y;
    for (int i=0; i<3; i++)
    {
      for (int j=0; j<6; j++)
      {
        if (dist(1385+60*i,200+60*j,mouseX,mouseY)<25)
        {
          if (i==0&&j==0)
          {
            red=255;
            green=255;
            blue=255;
          }
          if (i==1&&j==0)
          {
            red=192;
            green=192;
            blue=192;
          }
          if (i==2&&j==0)
          {
            red=128;
            green=128;
            blue=128;
          }
          if (i==0&&j==1)
          {
            red=0;
            green=0;
            blue=0;
          }
          if (i==1&&j==1)
          {
            red=255;
            green=0;
            blue=0;
          }
          if (i==2&&j==1)
          {
            red=128;
            green=0;
            blue=0;
          }
          if (i==0&&j==2)
          {
            red=255;
            green=255;
            blue=0;
          }
          if (i==1&&j==2)
          {
            red=128;
            green=128;
            blue=0;
          }
          if (i==2&&j==2)
          {
            red=0;
            green=255;
            blue=0;
          }
          if (i==0&&j==3)
          {
            red=0;
            green=128;
            blue=0;
          }
          if (i==1&&j==3)
          {
            red=0;
            green=255;
            blue=255;
          }
          if (i==2&&j==3)
          {
            red=0;
            green=128;
            blue=128;
          }
          if (i==0&&j==4)
          {
            red=0;
            green=0;
            blue=255;
          }
          if (i==1&&j==4)
          {
            red=0;
            green=0;
            blue=128;
          }
          if (i==2&&j==4)
          {
            red=255;
            green=0;
            blue=255;
          }
          if (i==0&&j==5)
          {
            red=128;
            green=0;
            blue=128;
          }
          if (i==1&&j==5)
          {
            red=208;
            green=130;
            blue=91;
          }
          if (i==2&&j==5)
          {
            red=254;
            green=220;
            blue=189;
          }
        }
      }
    }
    if(x>=45&&x<=210&&y>=510&&y<=560)
    {
      red=0;
      green=100;
      blue=0;
    }
    return red+","+green+","+blue;
  }
}

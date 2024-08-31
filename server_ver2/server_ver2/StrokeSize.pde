class StrokeSize
{
  int stroke_size, x, y, click,_i,_j;
  void strokesize_draw(int _stroke_size)
  {
    _j=(_stroke_size-2)/8;
    _i=(_stroke_size-2)%8/4;
    for (int i=0; i<2; i++)
    {
      for (int j=0; j<3; j++)
      {
        if(_i==i&&_j==j)
        {
          fill(200);
        }
        else
        {
          fill(255);
        }
        stroke(0);
        strokeWeight(1);
        rect(50+100*i, 200+100*j, 50, 50);
        fill(0);
        ellipse(75+100*i, 225+100*j, 2+4*i+8*j, 2+4*i+8*j);
        noFill();
      }
    }
  }
  int Size(int _x, int _y)
  {
    x=_x;
    y=_y;
    for (int i=0; i<2; i++)
    {
      for (int j=0; j<3; j++)
      {
        if (x>=50+100*i&&x<=100+100*i&&y>=200+100*j&&y<=250+100*j)
        {
          stroke_size=2+4*i+8*j;
        }
      }
    }
    return stroke_size;
  }
}

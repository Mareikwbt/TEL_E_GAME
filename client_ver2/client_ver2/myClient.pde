class myClient
{
  String msg;
  void myClient_draw(String _msg)
  {
    msg=_msg;
    int[] data=int(split(msg, ","));
    drawFlag=int(data[0]);
    new_x=data[1]-200;
    new_y=data[2];
    paintSize=data[3];
    red=data[4];
    green=data[5];
    blue=data[6];
    marubatsu_flag=data[7];
    reset_count=data[8];
    start_click=data[9];
    //println(reset_count);
    if (start_click==0)
    {
    }
    if (start_click==2)
    {
      if (marubatsu_flag==1)
      {
        fill(255, 0, 0);
        textSize(500);
        textAlign(CENTER, CENTER);
        text("○", width/2, height/2-100);
      }
      if (marubatsu_flag==2)
      {
        fill(0);
        textSize(50);
        text("×", 0, 700);
        if (button>0)
        {
          my_serial.write('a');
          //button=0;
        }
      }
      if (reset_count==1)
      {
        stroke(0);
        strokeWeight(1);
        fill(0, 100, 0);
        rect(100, 50, 1000, 700);
      }
      if (drawFlag==1&&button==0)
      {
        if (new_x>=100&&new_x<=1100&&new_y>=50&&new_y<=750)
        {
          stroke(red, green, blue);
          strokeWeight(paintSize);
          line(x, y, new_x, new_y);
        }
      }
      x=new_x;
      y=new_y;
    }
    if (prev_click==1)
    {
        fill(0, 100, 0);
        rect(100, 50, 1000, 700);
      if (start_click==1)
      {
        fill(0);
        textAlign(CENTER, CENTER);
        textSize(80);
        text("サーバーの接続待ち", width/2, height/2);
      }
    }
  }
}

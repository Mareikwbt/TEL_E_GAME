class Start
{
  void display()
  {
    if (start_click==0)
    {
      jt1 = new JTextField();
      background(255, 226, 57);
      image(img, 0, 400);
      image(img1, 1000, 290);
      if (mouseX>=width/2-150&&mouseX<=width/2+150&&mouseY>=600&&mouseY<=750)
      {
        fill(0);
        rect(640, 590, 320, 170, 40);
      } else
      {
        fill(0);
        rect(650, 600, 300, 150, 40);
      }
      fill(255);
      textSize(65);
      textAlign(CENTER, CENTER);
      text("Start", width/2, 675);
      fill(0);
      textSize(100);
      text("TEL   GAME", width/2, 300);
      fill(255);
      text("絵", 750, 300);
    }
  }
  void click()
  {
    if (start_click==0)
    {
      if (mouseX>=640&&mouseX<=960&&mouseY>=590&&mouseY<=760)
      {
        start_click=1;
      }
    }
  }
  void display2()
  {
    background(255, 226, 57);
    fill(0);
    textSize(80);
    text("お題を決めよう！", width/2, height/2-200);
  }
}

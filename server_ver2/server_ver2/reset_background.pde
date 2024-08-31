class Reset_background
{
  void reset()
  {
    //背面更新
    fill(255);
    noStroke();
    fill(255);
    rect(1300, 0, width-1300, height);//右枠
    rect(0, 0, 300, height);//左枠
    rect(0, 0, width, 50);//上枠
    rect(0, 750, 1300, height-750);//下枠
    //解答が表示されるところ
    stroke(0);
    strokeWeight(1);
    noFill();
    fill(255);
    rect(300, 780, 800, 80);
    //描くキャンパスの枠
    stroke(0);
    line(300, 50, 1300, 50);
    line(300, 50, 300, 750);
    line(300, 750, 1300, 750);
    line(1300, 50, 1300, 750);
    //戻るボタン
    if (mouseX>=20&&mouseX<=180&&mouseY>=20&&mouseY<=80)
    {
      textSize(50);
    }
    else
    {
      textSize(40);
    }
    fill(0);
    textAlign(CENTER,CENTER);
    text("<<BACK", 100, 50);
  }
  void answer()
  {
    fill(0);
    textSize(60);
    textAlign(0, 0);
    text(answer, 300, 840);
  }
  void back()
  {
    if (mouseX>=20&&mouseX<=180&&mouseY>=20&&mouseY<=80)
    {
      start_click=0;
    }
  }
}

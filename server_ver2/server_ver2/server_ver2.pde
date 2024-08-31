import processing.net.*;
import javax.swing.*;
import java.awt.*;
import controlP5.*;
Server myServer=new Server(this, 12345);

ControlP5 cp5;
JLayeredPane pane;
JTextField jt1;
String input = "";

//クラス
Start start=new Start();
StrokeSize Strokesize=new StrokeSize();
PaintColor Paintcolor=new PaintColor();
ColorPalette colorpalette=new ColorPalette();
Marubatsu Marubatsu=new Marubatsu();
ResetClass Reset=new ResetClass();
Reset_background Reset_back=new Reset_background();
Paintdraw Paint=new Paintdraw();
Class_Client Client=new Class_Client();
//変数
int x, y, point_x, point_y, drawFlag, start_click;
int paintSize, paintColor_Red, paintColor_Green, paintColor_Blue;
int button, marubatsu_flag, reset_count;
String paintColor, answer;
PImage img, img1;
PFont font;
void setup()
{
  frameRate(160);
  size(1600, 1000);
  background(255);
  noFill();
  point_x=1200;
  point_y=700;
  paintSize=2;
  font = createFont("MS Gothic", 40);//フォント作成
  textFont(font);
  answer=("");
  img=loadImage("Programing-removebg-preview.png");
  img1=loadImage("img1.png");
  img1.resize(img1.width/2, img1.height/2);
  textFont(font);
  cp5 = new ControlP5(this);
  ControlFont cf1 = new ControlFont(font, 40);
  cp5.setFont(cf1);
  java.awt.Canvas canvas =
    (java.awt.Canvas) surface.getNative();
  pane = (JLayeredPane) canvas.getParent().getParent();
}
void draw()
{
  myServer.write(drawFlag+","+mouseX+","+mouseY+","+paintSize+","+paintColor_Red+","+paintColor_Green+","+paintColor_Blue+","+marubatsu_flag+","+reset_count+","+start_click+",");
  if (start_click==0)
  {
    start.display();
  }
  if (start_click==1)
  {
    start.display2();
  }
  if (start_click==2)
  {
    //背景更新
    Reset_back.reset();
    //左の筆の大きさ
    Strokesize.strokesize_draw(paintSize);
    //カラーパレット
    colorpalette.palette();
    //〇×ボタン
    Marubatsu.marubatsu_draw();
    //リセットボタン
    Reset.resetbutton();
    //描画する線とクライアントに送信する場所
    Paint.paint();
    Client.client();
    x=mouseX;
    y=mouseY;
    Reset_back.answer();
    //早押しボタン信号
    //println(button);
    if (marubatsu_flag==2&&button==1)
    {
      button=0;
    }
    if (reset_count==1)
    {
      reset_count=0;
    }
    strokeWeight(1);
    stroke(0);
    fill(255);
    rect(300, 910, 1000, 80);
    fill(0);
    textSize(60);
    text("お題", 150, 970);
    text("回答", 150, 840);
    strokeWeight(1);
    text(input, 310, 970);
    println(paintSize);
  }
}


void mousePressed()
{
  if (start_click==2)
  {
    drawFlag=1;
    //キャンバスのリセット
    Reset.reset_draw(mouseX, mouseY);
    //paintSizeの変更ボタン判定
    for (int i=0; i<2; i++)
    {
      for (int j=0; j<5; j++)
      {
        if (x>=50+100*i&&x<=100+100*i&&y>=200+100*j&&y<=250+100*j)
        {
          paintSize=Strokesize.Size(mouseX, mouseY);
        }
      }
    }
    //
    marubatsu_flag=Marubatsu.sentNum(mouseX, mouseY);
    //paintcolorの変更ボタン判定
    paintColor=Paintcolor.paintcolor(mouseX, mouseY);
    String [] paintcolor_data=split(paintColor, ',');
    paintColor_Red=int(paintcolor_data[0]);
    paintColor_Green=int(paintcolor_data[1]);
    paintColor_Blue=int(paintcolor_data[2]);
  }
  start.click();
  Reset_back.back();
  if (start_click==1)
  {
    jt1.setBounds(350, 500, 800, 80);
    jt1.setFont(new Font("MS Gothic", Font.PLAIN, 40));
    //送信ボタン
    cp5.addBang("enter", 1150, 500, 100, 80)
      .setCaptionLabel("決定")
      .getCaptionLabel()
      .align(ControlP5.CENTER, ControlP5.CENTER)
      ;
    if (mouseX>=1150&&mouseX<=1250&&mouseY>=500&&mouseY<=580)
    {
      jt1.hide();
      cp5.getController("enter").setVisible(false);
      start_click=2;
      fill(0, 100, 0);
      rect(300, 50, 1000, 700);
    }
    pane.add(jt1);
  }
}


void mouseReleased()
{
  drawFlag=0;
}


void stop()
{
  myServer.stop();
}

void enter()
{
  if (start_click==1)
  {
    input = jt1.getText();
    jt1.setText("");
  }
}
void keyPressed(){
  //エンターキーが押されたら
  if(keyCode == ENTER){
    //「sample 番号 .png」の名前で画像を保存
    save("sampleMath.png");
    //この処理を行うごとにaを1増やす
  }
}

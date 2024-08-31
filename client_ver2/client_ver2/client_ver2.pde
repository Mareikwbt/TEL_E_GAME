import processing.serial.*;
import processing.net.*;
import javax.swing.*;
import java.awt.*;
import controlP5.*;

ControlP5 cp5;
JLayeredPane pane;
JTextField jt1;
String input = "", input_output;
//172.16.246.233
Client myClient =new Client(this, "172.16.246.233", 12345);
int x, y, new_x, new_y, red, green, blue, paintSize, drawFlag, marubatsu_flag, button_receive, reset_count, button_history, start_click, prev_click;

Serial my_serial;
int button;

myClient myclient=new myClient();

void setup()
{
  size(1200, 900);
  background(255);
  frameRate(160);
  //絵が描かれるキャンバス

  //p5
  PFont font = createFont("MS Gothic", 40);//フォント作成
  textFont(font);
  cp5 = new ControlP5(this);
  ControlFont cf1 = new ControlFont(font, 40);
  cp5.setFont(cf1);
  java.awt.Canvas canvas =
    (java.awt.Canvas) surface.getNative();
  pane = (JLayeredPane) canvas.getParent().getParent();

  //解答入力
  jt1 = new JTextField();
  jt1.setBounds(150, 800, 800, 80);
  jt1.setFont(new Font("MS Gothic", Font.PLAIN, 40));
  pane.add(jt1);

  //送信ボタン
  cp5.addBang("enter", 950, 800, 100, 80)
    .setCaptionLabel("送信")
    .getCaptionLabel()
    .align(ControlP5.CENTER, ControlP5.CENTER)
    ;
  //早押しボタン
  println(Serial.list());

  my_serial=new Serial(this, Serial.list()[0], 9600);
    fill(0, 100, 0);
  rect(100, 50, 1000, 700);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(80);
  text("サーバーの接続待ち", width/2, height/2);
}
void draw()
{
  fill(255);
  noStroke();
  strokeWeight(1);
  rect(1101, 0, width-1101, height);//右枠
  rect(0, 0, 99, height);//左枠
  rect(0, 0, width, 49);//上枠
  rect(0, 751, 1100, height-751);//下枠
  //描くキャンパスの枠
  stroke(0);
  line(100, 50, 1100, 50);
  line(100, 50, 100, 750);
  line(100, 750, 1100, 750);
  line(1100, 50, 1100, 750);
  if (myClient.available()>0)
  {
    myclient.myClient_draw(myClient.readString());
  }
  myClient.write(input+","+button+",");
  //println(button+","+marubatsu_flag);
  println(start_click);
  prev_click=start_click;
}
void enter()
{
  input = jt1.getText();
  jt1.setText("");
}
void serialEvent(Serial port)
{
  button=port.read();
}
void stop()
{
  myClient.stop();
}

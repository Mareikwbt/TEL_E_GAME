import javax.swing.*;
import java.awt.*;
import controlP5.*;

ControlP5 cp5;
JLayeredPane pane;
JTextField jt1;
String input = "";

void setup() {
  size(350,150);
  PFont font = createFont("arial",12);
  textFont(font);
  cp5 = new ControlP5(this);
  ControlFont cf1 = new ControlFont(font,12);
  cp5.setFont(cf1);
  java.awt.Canvas canvas =
            (java.awt.Canvas) surface.getNative();
  pane = (JLayeredPane) canvas.getParent().getParent();

  jt1 = new JTextField();
  jt1.setBounds(10, 60, 150, 30);
  pane.add(jt1);
    
  cp5.addBang("enter",170,60,50,30)
     .setCaptionLabel("入力")
     .getCaptionLabel()
     .align(ControlP5.CENTER, ControlP5.CENTER)
     ;
}

void draw() {
  background(80);
  fill(255);
  text(input, 230,80);
}

void enter() {
    input = jt1.getText();
    jt1.setText("");
}

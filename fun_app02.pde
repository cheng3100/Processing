PFont font, font2;
PImage bg;
float ix, iy, ix2, iy2;
float ir = 30;
int Button = 0;
float Edge = 50, EdgeMax = 80, EdgeMin = 50;

void setup()
{
  size(640, 320);
  noStroke();
  ix = width/4;
  iy = height /4 * 3;

  font = createFont("Arial", 16, true); 
  font2 = createFont("SourceCodePro-Regular.ttf", 24);
  // textFont(font2, 30);
  bg = loadImage("panda.jpg");
  textFont(font, 18);

  // surface.setResizable(true);
  ix2 = width/4*3;
  iy2 = height/4*3;
}
int page = 0;
void draw()
{



  if (page == 0)
  {
    showPage0();
  } else if (page == 1)
  {
   showPage1();
  } else if (page == 2)
  {
    showPage2();
  }
  else if (page == 3)
  {
    showPage3();
  }else if (page == 4)
  {
    showPage4();
  }
}

void showPage0()
{
  background(30, 10, 53);
    ix = width/4;
  iy = height /4 * 3;
    ix2 = width/4*3;
  iy2 = height/4*3;
  
  fill(252, 255, 255);
  textAlign(CENTER, CENTER);
 textFont(font2, 44); 
  text("Test for ZhangYQ!!", width/2, 61);
  textFont(font2, 32);
  text("Are You Ready??", width/2, 134);
  textFont(font2, 23);
  text("clik to start!", width/2, 223);
  
}
void showPage1()
{
    int iw = 139;
    int ih = 59;
    float EdgeXMin = 1.5 *iw, EdgeYMin = 1.5 * ih;
    float EdgeXMax = 3*iw, EdgeYMax = 3 * ih;    
    String str1, str2;
    color co1, co2, coH = color(255, 0, 36), coL = color(255);
    float Mu = 25;
    background(90, 107, 142);
    textFont(font2, 44);
    fill(252, 255, 255);
    text("1 + 1 =  ??", width/2, 103);


   



    if (overRect(ix-iw /2, iy- ih /2, iw, ih))
    {
      co1 = coH;
      co2 = coL;
      str1 = "3";
      str2 = "2";
      Button = 0x11;
    } else if (overRect(ix2-iw /2, iy2- ih /2, iw, ih))
    {
      
      co1 = coL;
      co2 = coH;
      str1 = "2";
      str2 = "3";
      Button = 0x11;
    }
    else
    {
      co1 = coL;
      co2 = coH;
      str1 = "2";
      str2 = "3";
      Button = 0x12;
    }
    fill(co1);
    rect(ix - iw/2, iy - ih/2, iw, ih);
    fill(co2);
    rect(ix2- iw/2, iy2-ih/2, iw, ih);

    fill(55, 241, 169);
    textFont(font2, 23);
    textAlign(LEFT, TOP);
    text(hour()+":"+minute()+":"+second(), 20, 20);
    // text("ipos:"+(int)ix+" "+(int)iy, 20, 20);
    //  text("mou:"+mouseX+" "+mouseY, 20, 40);
    textAlign(CENTER, CENTER);
    textFont(font2, 44);
    text(str1, ix, iy);
    text(str2, ix2, iy2);
}
void showPage2()
{
  int iw = 139;
    int ih = 59;
    float EdgeXMin = 1.5 *iw, EdgeYMin = 1.5 * ih;
    float EdgeXMax = 3*iw, EdgeYMax = 3 * ih;    
    String str1, str2;
    color co1, co2, coH = color(255, 0, 36), coL = color(255);
    float Mu = 25;
    background(244, 236, 239);
    textFont(font2, 39);
    fill(196, 190, 32);
    text("One day have ___ hours ??", width/2, 103);


    ellipse(ix, iy,ir, ir);

    float dif = ix - mouseX;
    if (abs(dif) < Edge)
    {
      Edge = EdgeXMax;
      if (dif > 0 && ix < width - iw/2 -20)
        ix += (Edge - dif)/Mu;
      else if (dif <0 && ix > iw/2 + 20)
        ix -= (Edge + dif)/Mu;
    } else
    {
      Edge = EdgeXMin;
    }

     if (overRect(ix-iw /2, iy- ih /2, iw, ih) && !overRect(ix2-iw /2, iy2- ih /2, iw, ih))
    {
      co1 = coH;
      co2 = coL;
      str1 = "60";
      str2 = "24";
      Button = 0x21;
    } else if (overRect(ix2-iw /2, iy2- ih /2, iw, ih))
    {
      
      co1 = coL;
      co2 = coH;
      str1 = "24";
      str2 = "60";
      Button = 0x21;
    }
    else
    {
      co1 = coL;
      co2 = coH;
      str1 = "24";
      str2 = "60";
      Button = 0x22;
    }
    fill(co1);
    rect(ix - iw/2, iy - ih/2, iw, ih);
    fill(co2);
    rect(ix2- iw/2, iy2-ih/2, iw, ih);

    fill(255, 150, 0);
    textFont(font2, 23);
    textAlign(LEFT, TOP);
    text(hour()+":"+minute()+":"+second(), 20, 20);
    // text("ipos:"+(int)ix+" "+(int)iy, 20, 20);
    //  text("mou:"+mouseX+" "+mouseY, 20, 40);
    textAlign(CENTER, CENTER);
    textFont(font2, 44);
    text(str1, ix, iy);
    text(str2, ix2, iy2); 
}
void showPage3()
{
    int iw = 139;
    int ih = 59;
    float EdgeXMin = 1.5 *iw, EdgeYMin = 1.5 * ih;
    float EdgeXMax = 3*iw, EdgeYMax = 3 * ih;    
    String str1, str2;
    color co1, co2, coH = color(255, 0, 36), coL = color(255);
    float Mu = 25;
    background(30, 10, 53);
    textFont(font2, 44);
    fill(252, 255, 255);
    text("Are You Stupid??", width/2, 103);


    //ellipse(ix, iy,ir, ir);

    float dif = ix - mouseX;
    if (abs(dif) < Edge)
    {
      Edge = EdgeXMax;
      if (dif > 0 && ix < width - iw/2 -20)
        ix += (Edge - dif)/Mu;
      else if (dif <0 && ix > iw/2 + 20)
        ix -= (Edge + dif)/Mu;
    } else
    {
      Edge = EdgeXMin;
    }

    dif = iy - mouseY;
    if (abs(dif) < Edge)
    {
      Edge = EdgeYMax;
      if (dif > 0 && iy < height - ih)
        iy += (Edge - dif)/Mu;
      else if (dif <0 && iy > ih)
        iy -= (Edge + dif)/Mu;
    } else
    {
      Edge = EdgeYMin;
    }
   
    if (overRect(ix-iw /2, iy- ih /2, iw, ih) && !overRect(ix2-iw /2, iy2- ih /2, iw, ih))
    {
      co1 = coH;
      co2 = coL;
      str1 = "YES";
      str2 = "NO";
      Button = 0x31;
    } else if(overRect(ix2-iw /2, iy2- ih /2, iw, ih))
    {
       co1 = coL;
      co2 = coH;
      str1 = "NO";
      str2 = "YES";
      Button = 0x31;
    }else
    {
      co1 = coL;
      co2 = coH;
      str1 = "NO";
      str2 = "YES";
      Button = 0x32;
    }
    fill(co1);
    rect(ix - iw/2, iy - ih/2, iw, ih);
    fill(co2);
    rect(ix2- iw/2, iy2-ih/2, iw, ih);

    fill(255, 150, 0);
    textFont(font2, 23);
    textAlign(LEFT, TOP);
    text(hour()+":"+minute()+":"+second(), 20, 20);
    // text("ipos:"+(int)ix+" "+(int)iy, 20, 20);
    //  text("mou:"+mouseX+" "+mouseY, 20, 40);
    textAlign(CENTER, CENTER);
    textFont(font2, 44);
    text(str1, ix, iy);
    text(str2, ix2, iy2);
}
void showPage4()
{
  background(bg);
  float offset = 0;
  float easing = 0.05;
   float dx = (mouseX-bg.width/2)- offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
    image(bg, offset, 0);
    
  int ix = 40,iy =40,iw =129,ih =40;
  rect(ix, iy, iw, ih);
  textAlign(LEFT, TOP);
  textFont(font2, 19);
  fill(0);
  text("Try Again !",ix ,iy );
  if (overRect(ix, iy, iw, ih))
  {
    fill(34,229,126);
    Button = 0x41;
  }
  else
  {
    fill(225,226,175);
    Button = 0x42;
  }
  
}
void mousePressed() {
  if (page == 0) {
    page = 1;
  } else if (page == 1 && Button == 0x11)
  {
    page = 2;
  }
  else if (page == 2 && Button == 0x21)
  {
    page = 3;
  }
  else if (page == 3 && Button == 0x31)
  {
    page = 4;
  }
  else if (page == 4 && Button == 0x41)
  {
    page = 0;
  }
}
boolean overRect(float x, float y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
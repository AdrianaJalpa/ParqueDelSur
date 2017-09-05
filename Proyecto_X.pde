int pantalla=1;

float x,y;

int Resistencia1;

int Resistencia2;

int ataque1=3;

int ataque2=5;

int ataque3=3;

int ataque4=8;

int turno = 0;

PGraphics n1;  //nombre  
PGraphics n2;
PGraphics n3;
PGraphics n4;
PGraphics n5;
PGraphics n6;

nombre Kevin;
nombre Brayan;
nombre Jonathan;
nombre Justin;
nombre Godinez;
nombre Kim;

ArrayList<Line> middleLines = new ArrayList<Line>();

int lineWidth = 10;


void setup()
{
  size(700,600);
  
  Kevin= new nombre(100,10,15, "Kevin");
  Brayan= new nombre(100,8,10, "Brayan");
  Jonathan= new nombre(100,10,10,"Jonathan");
  Justin= new nombre(100,15,25,"Justin");
  Godinez= new nombre(100,50,100, "Godinez");
  Kim= new nombre(100,20,30, "Kim");
  
  
  background(#8AD8CF);                //color amarillo
  frameRate=20;
  
  smooth(8);
  for (int i = 0; i < width; i += lineWidth+lineWidth/2)
  {
    middleLines.add(new Line(new PVector(i, height/2), new PVector(i, height/2)));
  }
  
  n1= createGraphics(700,600);
  n2= createGraphics(700,600);
  n3= createGraphics(700,600);
  n4= createGraphics(700,600);
  n5= createGraphics(700,600);
  n6= createGraphics(700,600);
  
}


void draw()
{
   
  stroke(random(255),30,160);
  strokeWeight(random(10));
  fill(30,random(255),160);
  noteline();
  
  
  strokeWeight(1);
  noStroke();
  
  if (pantalla==1)
  {

    {
      textAlign(CENTER);
      textSize(50);
      fill(#980E76);            //color morado
      text("Parque del Sur", 350,200);        //titulo
      textSize(20);
      fill(0);
      text("Presione s para comenzar",350,300);
    
      if( key == 's' || key == 'S')
      {
        pantalla=2;
      }
    }
  }
  
  if(pantalla==2)
  {
    background(#A9E8AF);        //fondo
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(40,30,120,150);
    Kevin();
    image(n1,1,1);
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(290,30,120,150);
    Brayan();
    image(n2,1,1);
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(490,30,120,150);
    Jonathan();
    image(n3,1,1);
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(40,290,120,160);
    Justin();
    image(n4,1,1);
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(290,290,120,160);
    Godinez();
    image(n5,1,1);
    
    
    stroke(#FEFF12);
    strokeWeight(5);
    fill(#C6C6B2);
    rect(490,290,120,160);
    Kim();
    image(n6,1,1);
    
    fill(0);
    textSize(15);
    text("A.KEVIN",100,205);
    
    text("B.BRAYAN",350,205);
    
    text("C.JONATHAN",550,205);
    
    text("D.JUSTIN", 100,475);
    
    text("E.GODINEZ",350,475);
    
    text("F.KIM",550,475);
    
    textSize(15);
    fill(#B70620);
    text("Instrucciones. Escoge tu personaje para pelear, con las teclas A,B,C,D,E o F!", 350,550);
            
  }
  
  if( key == 'a' || key == 'A')
  {
    pantalla=3;
  }
  
  if(pantalla==3)
  {
    background(#60D2DE);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
    
    fill(255);
    textSize(35);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n1,50,180);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n6,-20,-100);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n5, 175,-90);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n4,425,-100);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n3,-20,180);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n2,180,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
  }
  
  //******************Si presionan b********************************
  if(key=='b' || key == 'B')
  {
    pantalla=4;
  }
  
  if( pantalla== 4)
  {
    background(#C5FAF6);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
    
    fill(255);
    textSize(25);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n2,-200,180);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n6,-20,-100);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n5, 175,-90);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n4,425,-100);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n3,-20,180);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n1,430,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
  }
  
  //****************************cuando presiones c********************************
  if( key == 'c' || key == 'C')
  {
    pantalla=5;
  }
  
  if( pantalla==5)
  {
    background(#7BD3DE);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
    
    fill(255);
    textSize(25);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n3,-400,180);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n6,-20,-100);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n5, 175,-90);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n4,425,-100);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n2,180,185);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n1,430,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
  }
  
  
  //*************************si presionan d ************************************
  if(key == 'd' || key == 'D')
  {
    pantalla=6;
  }
  
  if( pantalla == 6)
  {
    background(#7BDECC);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
       
    fill(255);
    textSize(25);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n4,50,-105);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n6,-20,-100);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n5, 175,-90);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n3,-20,175);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n2,180,185);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n1,430,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
  }
  
  //******************si presionan e ******************************
  if( key == 'e' || key== 'E')
  {
    pantalla=7;
  }
  
  if(pantalla == 7)
  {
    background(#7BDE99);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
    
           
    fill(255);
    textSize(25);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n5,-200,-100);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n6,-20,-100);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n4, 430,-100);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n3,-20,175);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n2,180,185);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n1,430,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
    
  }
  
  
  //**************************si presionan f**********************
  
  if( key == 'f' || key == 'F')
  {
    pantalla=8;
  }
  
  if(pantalla== 8)
  {
    
    background(#D892C7);
    
    for (Line ml : middleLines)
    {
    ml.drawLine();
    ml.update();
    }
    
    fill(255);
    textSize(25);
    text("Parque del Sur",350,50);
    
    fill(0);
    textSize(20);
    text("Jugador 2 escoge personaje con z,y,x,w,v", 350,100);
        
    image(n6,-400,-100);
    
    fill(#BF0612);      //hp rect rojo jugador 1
    noStroke();
    rect(100,350,100,20);
    
    fill(#00FF1B);            //hp verde jugador 1
    rect(100,350, Resistencia1, 20);
    
    fill(#BF0612);      //hp rect rojo jugador2
    rect(480,350,100,20);
    
    fill(#00FF1B);        //hp verde jugador2
    rect(480,350, Resistencia2, 20);
    
    fill(0);
    textSize(15);
    text("Presione 3 o 4 para atacar", 150,390);
    text("Presione 1 o 2 para atacar", 530,390);
    
    if(Resistencia1 <=0 || Resistencia2 <=0)
    {
      text("Presione r para volver a jugar", 350,350);
    }
    
    if(Resistencia1 <=0)
    {
      fill(255,0,0);
      text("Perdiste, jugador 1 :(", 350,200);
    }
    
    if(Resistencia2 <=0)
    {
      fill(255,0,0);
      text(" Perdiste, jugador 2 :(",350,200);
    }
    
    if( key == 'z' || key =='Z')
    {
      image(n5,175,-90);
    }
    
    if(key== 'y' || key == 'Y')
    {
      image( n4, 430,-100);
    }
    
    if(key == 'x' || key == 'X')
    {
      image(n3,-20,175);
    }
    
    if( key== 'w' || key == 'W')
    {
      image(n2,180,185);
    }
    
    if(key == 'v' || key == 'V')
    {
      image(n1,430,180);
    }
    
    if(key == 'r' || key == 'R')
    {
      pantalla=1;
      background(#8AD8CF);
    }
    
    if(pantalla==1)
    {
      Resistencia1=100;
      Resistencia2=100;
    }
  }
}





void Kevin()
{
   //cuerpo ************************************************************
   n1.beginDraw();
   n1.noStroke();
   
   n1.fill(#67581F);
   n1.beginShape();        //pantalon
   n1.vertex(65,140);
   n1.vertex(70,150);
   n1.vertex(130,150);
   n1.vertex(135,140);
   n1.endShape();
   
   n1.fill(#C6141A);
   n1.beginShape();        //chamarra
   n1.vertex(80,90);
   n1.vertex(55,120);
   n1.vertex(60,140);
   n1.vertex(90,145);
   n1.vertex(110,145);
   n1.vertex(140,140);
   n1.vertex(145,120);
   n1.vertex(120,90);
   n1.endShape();
   
   n1.stroke(0);
   n1.strokeWeight(2);
   n1.line(80,100,60,125);      //brazo izq
   n1.line(120,100,140,125);      //brazo derecho
   
   n1.noStroke();
   n1.fill(227,192,154);
   n1.ellipse(55,125,15,15);    //mano izq
   n1.ellipse(145,125,15,15);              //mano derecha
   
   n1.strokeWeight(1);
   n1.stroke(0);
   n1.line(100,100,100,140);    //cierre de la chamarra
   
   n1.fill(0);
   n1.ellipse(100,120,5,5);    //boton1
   n1.ellipse(100,130,5,5);      //boton2
   n1.ellipse(85,150,30,5);      //pie izq
   n1.ellipse(115,150,30,5);    //pie derecho
  
 //head*****************************************************************
   n1.noStroke();
   n1.fill(227,192,154);
   n1.ellipse(100,80,75,65);  //cabeza
   
   n1.stroke(0);
   n1.noStroke();
   n1.fill(38,155,162);
   n1.arc(100, 69, 75, 45, radians(175),radians( 365));    //gorro
   
   n1.fill(#F7EC07);
   n1.ellipse(100,48,30,10);    //pompon gorro
   
   n1.strokeWeight(5);
   n1.stroke(#F7EC07);
   n1.line(65,69,97,66);    //linea gorro
   n1.line(97,66,135,69);    //linea2 gorro
   
   n1.strokeWeight(1);
   n1.fill(255);
   n1.noStroke();
   n1.ellipse(90,80,15,20);  //ojo izq
   n1.ellipse(110,80,15,20);  //ojo derecho
   
   n1.fill(0);
   n1.ellipse(88,75,5,5);  //pupila izq
   n1.ellipse(108,75,5,5);    //pupila derecha
   
   n1.stroke(0);
   n1.line(80,65,95,70);    //ceja izq
   n1.line(103,70,120,65);    //ceja derecha
   
   n1.noFill();
   n1.arc(100,100,10,2,radians(185),radians(360));    //boca
   
   n1.stroke(#7E7C7C);
   n1.arc(100,95,55,23,radians(0),radians(180));    //papada
   
   n1.endDraw();
}




void Brayan()
{
  //body******************************************
  n2.beginDraw();
  n2.noStroke();
  n2.fill(#048E83);      //pantalon
  n2.rect(320,130,60,23);
  
  n2.fill(#E5551C);
  n2.noStroke();
  n2.beginShape();        //chamarra
  n2.vertex(330,100);
  n2.vertex(310,140);
  n2.vertex(350,150);
  n2.vertex(390,140);
  n2.vertex(370,100);
  n2.endShape();
  
  n2.stroke(0);
  n2.line(350,105,350,150);       //cierre
  
  n2.noFill();
  n2.rect(330,120,10,15);      //bolsillo izq
  n2.beginShape();
  n2.vertex(330,120);
  n2.vertex(335,128);
  n2.vertex(340,120);
  n2.endShape();
  
  n2.rect(360,120,10,15);        //bolsillo derecho
  n2.beginShape();
  n2.vertex(360,120);
  n2.vertex(365,128);
  n2.vertex(370,120);
  n2.endShape();
  
  n2.fill(0);
  n2.ellipse(335,153,35,3);
  n2.ellipse(365,153,35,3);
  
  n2.stroke(0);
  n2.fill(#E5551C);      //brazo izquierdo
  n2.beginShape();
  n2.vertex(330,100);
  n2.vertex(312,135);
  n2.vertex(305,130);
  n2.endShape();
  
  n2.beginShape();      //brazo derecho
  n2.vertex(370,100);
  n2.vertex(388,135);
  n2.vertex(395,130);
  n2.endShape();
  
  n2.noStroke();
  n2.fill(#2BAF12);
  n2.ellipse(310,133,13,13);
  n2.ellipse(390,133,13,13);
    
  //head*****************************************
  n2.noStroke();
  n2.fill(#177405);
  n2.ellipse(350,90,50,50);      //bufanda
  n2.fill(227,192,154);
  n2.ellipse(352,80,65,65);      //cabeza
  
  n2.fill(255);
  n2.ellipse(340,80,15,20);      //ojo izq
  n2.ellipse(360,80,15,20);      //ojo derecho
  
  n2.fill(0);
  n2.ellipse(335,80,5,5);      //pupila izq
  n2.ellipse(355,80,5,5);      //pupila derecha
  
  n2.stroke(0);
  n2.noFill();
  n2.arc(350,100,10,2,radians(185),radians(360));      //boca
  
  n2.fill(#2BAF12);
  n2.strokeWeight(8);
  n2.stroke(#2BAF12);
  n2.strokeJoin(ROUND);
  n2.rect(318,45,63,10);          //gorro
  
  n2.noStroke();
  n2.ellipse(320,75,15,50);        //orejera1
  n2.ellipse(380,75,15,50);        //orejera2
  
  n2.fill(#177405);
  n2.arc(350,60,50,20,radians(180),radians(360));
  n2.rect(325,60,50,10);
  
  n2.stroke(0);
  n2.strokeWeight(1);
  n2.noFill();
  n2.arc(350,75,50,20,radians(180),radians(360));
  n2.endDraw();
}





void Jonathan()
{
 
  //body***********************************************
  n3.beginDraw();
  n3.noStroke();
  n3.fill(#2E4B98);                    //color azul
  n3.rect(523,140,55,13);              //pantalon
  
  n3.fill(0);
  n3.ellipse(535,155,30,5);          //pie izquierdo
  n3.ellipse(565,155,30,5);                  //pie derecho
 
  n3.fill(#844131);            //color cafe
  n3.beginShape();            //chamarra
  n3.vertex(530,100);
  n3.vertex(515,140);
  n3.vertex(550,150);
  n3.vertex(585,140);
  n3.vertex(570,100);
  n3.endShape();
  
  n3.strokeWeight(1);
  n3.stroke(0);
  n3.line(550,100,550,149);
  
  n3.fill(0);
  n3.ellipse(545,120,3,3);        //boton1
  n3.ellipse(545,130,3,3);        //boton2
  n3.ellipse(545,140,3,3);        //boton3
  
  n3.fill(#844131);
  n3.beginShape();                //brazo izq
  n3.vertex(530,100);
  n3.vertex(520,135);
  n3.vertex(510,130);
  n3.endShape();
  
  n3.beginShape();               //brazo derecho
  n3.vertex(570,100);
  n3.vertex(580,135);
  n3.vertex(590,130);
  n3.endShape();
  
  n3.noStroke();
  n3.fill(#BC0202);                    //color rojo
  n3.ellipse(515,135,13,13);          //mano izquierda
  n3.ellipse(586,135,13,13);          //mano derecha
    
  //head************************************************
  n3.noStroke();
  n3.fill(#BC0202);
  n3.ellipse(550,85,60,60);
  n3.fill(227,192,154);            //color piel
  n3.ellipse(550,80,65,65);        //cabeza
  
  n3.fill(255);
  n3.ellipse(540,80,15,20);        //ojo izq
  n3.ellipse(560,80,15,20);      //ojo derecho
  n3.fill(0);
  n3.ellipse(545,85,5,5);        //pupila izq
  n3.ellipse(565,85,5,5);        //pupila derecha
  
  n3.noFill();
  n3.stroke(0);
  n3.arc(550,100,10,2,radians(185),radians(360));      //boca
  
  n3.noStroke();
  n3.fill(#2E4B98);              //color azul
  n3.arc(550, 69, 65, 50, radians(175),radians( 365));        //gorro 
  n3.fill(#BC0202);                  //color rojo
  n3.ellipse(550,45,20,15);          //pompon del gorro
  
  n3.stroke(#BC0202);                //color rojo    
  n3.strokeWeight(5);
  n3.line(518,68,550,66);
  n3.line(550,66,580,68);
  n3.endDraw();
}


void Justin()
{
  //body*************************************************
  n4.beginDraw();
  n4.noStroke();
  n4.strokeWeight(1);
  
  n4.fill(#e74200);
  n4.rect(70,420,60,15);                  //pantalon
  
  n4.fill(#e84500);
  n4.stroke(#837F7F);
  n4.beginShape();            //chamarra
  n4.vertex(70,370);
  n4.vertex(60,420);
  n4.vertex(100,430);
  n4.vertex(140,420);
  n4.vertex(130,370);
  n4.endShape();
  
  n4.stroke(0);
  n4.line(100,400,100,429);      //cierre
  
  n4.strokeWeight(3);
  n4.line(70,435,130,435);        //pies
  
  n4.strokeWeight(1);
  n4.stroke(0);
  n4.beginShape();              //brazo izquierdo
  n4.vertex(70,370);
  n4.vertex(65,415);
  n4.vertex(55,405);
  n4.endShape();
  
  n4.beginShape();            //brazo derecho
  n4.vertex(130,370);
  n4.vertex(135,415);
  n4.vertex(145,405);
  n4.endShape();
  
  n4.noStroke();
  n4.fill(#4a2312);
  n4.ellipse(60,412,13,13);        //mano izquierda
  n4.ellipse(140,412,13,13);       //mano derecha
  
  
  //head***************************************************
  n4.strokeWeight(1);
  n4.stroke(#837F7F);              //color gris
  n4.fill(#e84500);                   //color naranja
  n4.ellipse(100,350,100,100);        //gorro naranja
  
  n4.noFill();
  n4.stroke(0);
  n4.strokeWeight(1);
  n4.ellipse(100,354,75,68);                        //agujeta
  n4.line(100,380,108,395);            //agujeta1
  n4.line(100,380,92,395);             //agujeta2
  
  n4.noStroke();
  n4.fill(#4a2312);                  //cafe oscuro
  n4.ellipse(100,350,65,60);          //gorro cafe oscuro
  
  n4.fill(227,192,154);                 //color piel
  n4.ellipse(100,350,35,53);            //cabeza
  
  n4.fill(255);
  n4.ellipse(90,350,20,28);             //ojo izquierdo
  n4.ellipse(110,350,20,28);            //ojo derecho
  
  n4.fill(0);
  n4.ellipse(90,350,5,5);              //pupila izquierda
  n4.ellipse(110,350,5,5);            //pupila derecha
  n4.endDraw();
}




void Godinez()
{
  n5.beginDraw();
  //body*****************************************************
  n5.noStroke();
  n5.fill(#6A5656);
  n5.rect(322,410,57,15);              //pantalon
  
  n5.fill(0);
  n5.ellipse(335,425,30,5);            //pie izquierdo
  n5.ellipse(365,425,30,5);            //pie derecho
  
  n5.fill(#014462);
  n5.beginShape();                    //chamarra
  n5.vertex(335,365);        
  n5.vertex(315,410);
  n5.vertex(350,420);
  n5.vertex(385,410);
  n5.vertex(370,365);
  n5.endShape();
  
  n5.fill(255);
  n5.beginShape();                    //corbata
  n5.vertex(343,370);
  n5.vertex(343,410);
  n5.vertex(350,415);
  n5.vertex(357,410);
  n5.vertex(357,370);
  n5.endShape();
  
  n5.stroke(0);
  n5.fill(#014462);
  n5.beginShape();                    //brazo izquierdo
  n5.vertex(333,365);
  n5.vertex(320,405);
  n5.vertex(310,400);
  n5.endShape();
  
  n5.beginShape();                    //brazo derecho
  n5.vertex(370,365);
  n5.vertex(380,405);
  n5.vertex(390,400);
  n5.endShape();
  
  n5.noStroke();
  n5.fill(227,192,154);
  n5.ellipse(315,405,13,13);            //mano izquierda
  n5.ellipse(385,405,13,13);            //mano derecha
  
  //head*****************************************************
  n5.noStroke();
  n5.fill(227,192,154);
  n5.ellipse(350,350,65,65);          //cabeza
  
  n5.fill(255);
  n5.ellipse(340,350,15,20);            //ojo izquierdo
  n5.ellipse(360,350,15,20);            //ojo derecho
  
  n5.fill(0);
  n5.ellipse(340,355,5,5);            //pupila izquierda
  n5.ellipse(360,355,5,5);            //pupila derecha
  
  n5.fill(#6F3333);
  n5.arc(349,335,58,40,radians(165),radians(273));        //parte izquierda cabello
  n5.arc(351,335,58,40,radians(268),radians(375));          //parte derecha cabello
  
  n5.stroke(0);
  n5.noFill();
  n5.arc(350,370,15,5,radians(0),radians(180));          //sonrisa 
  n5.rect(330,350,18,10);                //lente izquierdo
  n5.rect(353,350,18,10);                //lente derecho
  n5.line(348,355,352,355);              //linea entre nariz
  n5.line(315,348,330,355);              //patilla izquierda
  n5.line(371,355,385,348);              //patilla derecha
  
  //maletin********************************************
  n5.stroke(0);
  n5.strokeWeight(2);
  n5.arc(390,410,15,10,radians(180),radians(360));        //manojo
  
  n5.fill(0);
  n5.rect(380,410,20,10);
  n5.endDraw();
}



void Kim()
{
  n6.beginDraw();
  //body****************************************************************
  n6.strokeWeight(1);
  n6.noStroke();
  n6.fill(0);
  n6.ellipse(550,350,80,80);          //cabello
  n6.arc(518,375,30,30,radians(300),radians(480));      //coleta izq
  n6.arc(580,375,30,30,radians(48),radians(200));        //coleta derecha
  
  n6.fill(227,192,154);
  n6.rect(520,420,60,15);      //piernas
  
  n6.fill(0);
  n6.ellipse(535,435,30,5);      //pie izquierdo
  n6.ellipse(565,435,30,5);      //pie derecho
  
  n6.fill(#7C0F5B);
  n6.beginShape();
  n6.vertex(530,375);          //vestido
  n6.vertex(515,420);
  n6.vertex(550,430);
  n6.vertex(585,420);
  n6.vertex(570,375);
  n6.endShape();
  
  n6.fill(255);
  n6.beginShape();
  n6.vertex(530,375);          //cuello
  n6.vertex(524,395);
  n6.vertex(550,382);
  n6.vertex(576,395);
  n6.vertex(570,375);
  n6.endShape();
  
  n6.fill(227,192,154);
  n6.stroke(0);
  n6.beginShape();              //brazo izquierdo
  n6.vertex(530,375);
  n6.vertex(520,410);
  n6.vertex(510,405);
  n6.endShape();
  
  n6.beginShape();            //brazo derecho
  n6.vertex(570,375);
  n6.vertex(580,410);
  n6.vertex(590,405);
  n6.endShape();
  
  n6.fill(227,192,154);
  n6.noStroke();
  n6.ellipse(515,410,15,15);          //mano izquierda
  n6.ellipse(585,410,15,15);          //mano derecha
  
  //head*****************************************************************
  n6.noStroke();
  n6.fill(227,192,154);            //color piel
  n6.ellipse(550,350,65,65);        //cabeza
  n6.fill(255);
  n6.ellipse(540,350,15,20);        //ojo izquierdo
  n6.ellipse(560,350,15,20);        //ojo derecho
  
  n6.fill(0);
  n6.ellipse(543,347,5,5);          //pupila izquierda
  n6.ellipse(563,347,5,5);          //pupila derecha
  
  n6.fill(#FC61CE);
  n6.arc(550,370,15,10,radians(0),radians(180));        //boca
  
  n6.fill(0);
  n6.arc(550,335,55,35,radians(180),radians(360));        //copete
  
  n6.endDraw();
}

 void noteline()
{
  x=random(700);
  y=random(200);
  line(x,600,x,600-y);
  text("♪",x,148-y);
}



void keyReleased()
{
  
  if(Resistencia1 > 0 && Resistencia2 > 0 && turno == 0 && key=='1')
  {
    Resistencia1 -= ataque2;
    turno += 1;
        
  }
  
  if(Resistencia1 > 0 && Resistencia2 > 0 && turno == 0 && key=='2')
  {
    Resistencia1 -= ataque1;
    turno += 1;
  }
  
  if(Resistencia1 > 0 && Resistencia2 > 0 && turno == 1 && key=='3')
  {
    Resistencia2 -= ataque3;
    turno -=1;
  }
  
  if(Resistencia1 > 0 && Resistencia2 > 0 && turno == 1 && key=='4')
  {
    Resistencia2 -= ataque4;
    turno -=1;
  }
}

class nombre
{
  int Resistencia;
  int ataque1;
  int ataque2;
  String nombre;
  
  nombre(int Resistencia_, int ataque1_, int ataque2_, String nombre_)
  {
    Resistencia= Resistencia_;
    ataque1= ataque1_;
    ataque2= ataque2_;
    nombre= nombre_;
  }
}

class Line
{
  PVector baseLoc;
  PVector loc;

  int maxLineHeight = int(random(165,10));
  float lineSpeed = random(3);
  int startX = 10;

  float angle = 0;

  int r = int(random(20,70));
  int g = int(random(20,70));
  int b = int(random(20,70));

  Line(PVector baseLoc_, PVector loc_) {
    baseLoc = baseLoc_;
    loc = loc_;
  } 

  void drawLine() {
    stroke(r, g, b);
    strokeWeight(lineWidth);
    line(baseLoc.x, baseLoc.y, loc.x, loc.y);
  }

  void update() {
    angle += lineSpeed;
    float wave = abs(cos(radians(angle))*maxLineHeight);
    if (baseLoc.y <= 0) {
      loc.y = wave;
    }
    else if (baseLoc.y >= height) {
      loc.y = height-wave;
    }
    else {
      baseLoc.y = height-wave;
      loc.y = height+wave;
    }
  }
}
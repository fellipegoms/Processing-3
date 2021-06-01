//Equipe: Fellipe Gomes, Fernando Purkott, Tiago Fuchs, Willian Plantikow

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import controlP5.*;
ControlP5 cp5;


import processing.video.*;

Minim minim;
AudioPlayer efeitodesom;
int musica=1;
int tsize = 20;
int tcolor = 128;
String tcontent = "Diga o que você está pensando";
PImage ursos, ursosgrandes, gato, gatop, cachorro, cachorrop, cidade, cidadep, avenida, avenidap, gatoc, gatocp, cachorrob, cachorrobp, cidadeb, cidadebp, skate, skatep, gato3, gato3p, skate2, skate2p, skate3, skate3p, gato4, gato4p, cachorroc, cachorrocp, fotodeperfil,meme1p,meme2p,meme3p,meme4p,meme5p,meme6p,meme1,meme2,meme3,meme4,meme5,meme6; 
int svar = 1;
Movie video; 
Movie videop;
Movie disco;
Movie discop;
Movie video3;
Movie video3p;
Movie cachorro1;
Movie cachorro1p;
Movie cidade1;
Movie cidade1p;
Movie pombo1;
Movie pombo1p;
Movie gato1;
Movie gato1p;
Movie cachorro2;
Movie cachorro2p;
Movie chuva1;
Movie chuva1p;
Movie gato2;
Movie gato2p;
Movie passarinho1;
Movie passarinho1p;
Movie peru1;
Movie peru1p;
Movie sol1;
Movie sol1p;
Movie rio1;
Movie rio1p;
void setup(){
  size(400,400);
  ursos = loadImage("img5.jpg");
  ursosgrandes = loadImage("img5grande.jpg");
  gato = loadImage("gato.png");
  gatop = loadImage("gatop.png");
  cachorro = loadImage("cachorro.jpg");
  cachorrop = loadImage("cachorrop.jpg");
  cidade = loadImage("cidade.jpg");
  cidadep = loadImage("cidadep.jpg");
  avenida = loadImage("avenida.jpg");
  avenidap = loadImage("avenidap.jpg");
  gatoc = loadImage("gatoc.jpg");
  gatocp = loadImage("gatocp.jpg");
  cachorrob = loadImage("cachorrob.jpg");
  cachorrobp = loadImage("cachorrobp.jpg");
  cidadeb = loadImage("cidadeb.jpg");
  cidadebp = loadImage("cidadebp.jpg");
  skate = loadImage("skate.jpg");
  skatep = loadImage("skatep.jpg");
  gato3 = loadImage("gato3.jpg");
  gato3p = loadImage("gato3p.jpg");
  skate2 = loadImage("skate2.jpg");
  skate2p = loadImage("skate2p.jpg");
  skate3 = loadImage("skate3.jpg");
  skate3p = loadImage("skate3p.jpg");
  gato4 = loadImage("gato4.jpg");
  gato4p = loadImage("gato4p.jpg");
  cachorroc = loadImage("cachorroc.jpg");
  cachorrocp = loadImage("cachorrocp.jpg");
  fotodeperfil = loadImage("fotodeperfil.jpg");
  meme1p = loadImage("meme1p.jpg");
  meme1 = loadImage("meme1.jpg");
  meme2p = loadImage("meme2p.png");
  meme2 = loadImage("meme2.png");
  meme3p = loadImage("meme3p.jpg");
  meme3 = loadImage("meme3.jpg");
  meme4p = loadImage("meme4p.jpeg");
  meme4 = loadImage("meme4.jpeg");
  meme5p = loadImage("meme5p.png");
  meme5 = loadImage("meme5.png");
  meme6p = loadImage("meme6p.jpg");
  meme6 = loadImage("meme6.jpg");
  video = new Movie(this, "video1.mp4");
  videop = new Movie(this, "video1p.mp4");
  disco = new Movie(this, "disco.mp4");
  discop = new Movie(this, "discop2.mp4");
  video3 = new Movie(this, "video3.mp4");
  video3p = new Movie(this, "video3p.mp4");
  cachorro1 = new Movie(this, "cachorro_1_300.mp4");
  cachorro1p = new Movie(this, "cachorro_1_100.mp4");
  cidade1 = new Movie(this, "cidade1.mp4");
  cidade1p = new Movie(this, "cidade1p.mp4");
  pombo1 = new Movie(this, "pombo1.mp4");
  pombo1p = new Movie(this, "pombo1p.mp4");
  gato1 = new Movie(this, "gato1.mp4");
  gato1p = new Movie(this, "gato1p.mp4");
  cachorro2 = new Movie(this, "cachorro_2_300.mp4");
  cachorro2p = new Movie(this, "cachorro_2_100.mp4");
  chuva1 = new Movie(this, "chuva_1_300.mp4");
  chuva1p = new Movie(this, "chuva_1_100.mp4");
  gato2 = new Movie(this, "gato_2_300.mp4");
  gato2p = new Movie(this, "gato_2_100.mp4");
  passarinho1 = new Movie(this, "passarinho_1_300.mp4");
  passarinho1p = new Movie(this, "passarinho_1_100.mp4");
  peru1 = new Movie(this, "peru_1_300.mp4");
  peru1p = new Movie(this, "peru_1_100.mp4");
  sol1 = new Movie(this, "sol1.mp4");
  sol1p = new Movie(this, "sol1p.mp4");
  rio1 = new Movie(this, "rio1.mp4");
  rio1p = new Movie(this, "rio1p.mp4");
  video.loop();
  videop.loop();
  disco.loop();
  discop.loop();
  video3.loop();
  video3p.loop();
  cachorro1.loop();
  cachorro1p.loop();
  cidade1.loop();
  cidade1p.loop();
  pombo1.loop();
  pombo1p.loop();
  gato1.loop();
  gato1p.loop();
  cachorro2.loop();
  cachorro2p.loop();
  chuva1.loop();
  chuva1p.loop();
  gato2.loop();
  gato2p.loop();
  passarinho1.loop();
  passarinho1p.loop();
  peru1.loop();
  peru1p.loop();
  sol1.loop();
  sol1p.loop();
  rio1.loop();
  rio1p.loop();
  cp5 = new ControlP5(this);
  cp5.addTextfield("texto", 152, 60, 100, 30);
  minim = new Minim(this);
  efeitodesom = minim.loadFile("click.mp3");
  

}

void draw(){
  botoes();
  if (svar==1) tela1();
  if (svar==2) tela2();
  if (svar==3) tela3();
  if (svar==4) tela4();
  

}

  




  
void tela1(){
  cp5.hide();
  fill(255,0,0); rect(0,0,width, height-40);
  fill(0);   rect(0,0,width, height-40); fill(255); text("RedePUC", 1,20); text("Seu Perfil", 150,50); text("Suas Fotos", 150, 200);
  image(fotodeperfil, 150,60);
  image(meme1p, 10,290);
  image(meme2p, 150,290);
  image(meme3p, 290,290);
  image(meme4p, 150,210);
  image(meme5p, 10,210);
  image(meme6p, 290,210);
  if(mousePressed) {
    if((mouseX>10)&&(mouseX<110)&&(mouseY>290)&&(mouseY<357)) image(meme1,50,30);
    if((mouseX>150)&&(mouseX<250)&&(mouseY>290)&&(mouseY<357)) image(meme2,50,30);
    if((mouseX>290)&&(mouseX<390)&&(mouseY>290)&&(mouseY<357)) image(meme3,50,30);
    if((mouseX>150)&&(mouseX<250)&&(mouseY>210)&&(mouseY<277)) image(meme4,50,30);
    if((mouseX>10)&&(mouseX<110)&&(mouseY>210)&&(mouseY<277)) image(meme5,50,30);
    if((mouseX>290)&&(mouseX<390)&&(mouseY>210)&&(mouseY<277)) image(meme6,50,30);
  }
}
void tela2(){
  cp5.hide();
  fill(0,255,0);
  rect(0,0,width, height-40);
  fill(0);   rect(0,0,width, height-40); fill(255); text("Fotos", 170,160);text("Populares", 150,190);
  image(ursos, 0,10);
  image(gatop, 0, 77);
  image(cachorrop, 0, 144);
  image(cidadep, 0, 211);
  image(avenidap, 0, 278);
  image(gatocp, 300, 10);
  image(cachorrobp, 300, 77);
  image(cidadebp, 300, 144);
  image(skatep, 300, 211);
  image(gato3p, 300, 278);
  image(skate2p, 200, 10);
  image(skate3p, 200, 278);
  image(gato4p, 100, 10);
  image(cachorrocp, 100, 278);
  if(mousePressed) {
    if((mouseX>0)&&(mouseX<100)&&(mouseY>10)&&(mouseY<77)) image(ursosgrandes,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>77)&&(mouseY<144)) image(gato,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>144)&&(mouseY<211)) image(cachorro,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>211)&&(mouseY<278)) image(cidade,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>278)&&(mouseY<345)) image(avenida,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>10)&&(mouseY<77)) image(gatoc,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>77)&&(mouseY<144)) image(cachorrob,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>144)&&(mouseY<211)) image(cidadeb,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>211)&&(mouseY<278)) image(skate,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>278)&&(mouseY<345)) image(gato3,50,30);
    if((mouseX>200)&&(mouseX<300)&&(mouseY>10)&&(mouseY<77)) image(skate2,50,30);
    if((mouseX>200)&&(mouseX<300)&&(mouseY>278)&&(mouseY<345)) image(skate3,50,30);
    if((mouseX>100)&&(mouseX<200)&&(mouseY>10)&&(mouseY<77)) image(gato4,50,30);
    if((mouseX>100)&&(mouseX<200)&&(mouseY>278)&&(mouseY<345)) image(cachorroc,50,30);
    
    
    
  }  
}
void tela3(){
  cp5.hide();
  textSize(20);
  fill(0,0,255);
  rect(0,0,width, height-40);
  fill(0);   rect(0,0,width, height-40); fill(255); text("Vídeos", 170,160);text("Populares", 150,190);
  image(videop,0,10);
  image(discop,0,77);
  image(video3p,0,144);
  image(cachorro1p,0,211);
  image(cidade1p,0,278);
  image(pombo1p, 300, 10);
  image(gato1p, 300, 77);
  image(cachorro2p, 300, 144);
  image(chuva1p, 300, 211);
  image(gato2p, 300, 278);
  image(passarinho1p, 200, 10);
  image(peru1p, 200, 278);
  image(sol1p, 100, 10);
  image(rio1p, 100, 278);
  if(mousePressed) {
    if((mouseX>0)&&(mouseX<100)&&(mouseY>10)&&(mouseY<77)) image(video,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>77)&&(mouseY<144)) image(disco,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>144)&&(mouseY<211)) image(video3,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>211)&&(mouseY<278)) image(cachorro1,50,30);
    if((mouseX>0)&&(mouseX<100)&&(mouseY>278)&&(mouseY<345)) image(cidade1,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>10)&&(mouseY<77)) image(pombo1,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>77)&&(mouseY<144)) image(gato1,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>144)&&(mouseY<211)) image(cachorro2,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>211)&&(mouseY<278)) image(chuva1,50,30);
    if((mouseX>300)&&(mouseX<400)&&(mouseY>278)&&(mouseY<345)) image(gato2,50,30);
    if((mouseX>200)&&(mouseX<300)&&(mouseY>10)&&(mouseY<77)) image(passarinho1,50,30);
    if((mouseX>200)&&(mouseX<300)&&(mouseY>278)&&(mouseY<345)) image(peru1,50,30);
    if((mouseX>100)&&(mouseX<200)&&(mouseY>10)&&(mouseY<77)) image(sol1,50,30);
    if((mouseX>100)&&(mouseX<200)&&(mouseY>278)&&(mouseY<345)) image(rio1,50,30);
  }
}
void tela4(){
  cp5.show();
  fill(0);
  rect(0,0,width, height-40);
  fill(0);   rect(0,0,width, height-40); fill(255); text("Seu Status:", 150,50);
  textSize(tsize);
  fill(tcolor);
  text(tcontent,70,180);
  
  
  
}

void botoes(){
  textSize(20);
  fill(255,0,0);     rect(0,360, 100,40);    fill(0);   text("Perfil",  10,390); 
  fill(0,255,0);     rect(100,360,100,40);   fill(0);   text("Fotos", 110,390);
  fill(0,0,255);     rect(200,360,100,40);   fill(0);   text("Vídeos", 210,390);
  fill(255,255,255); rect(300,360,100,40);   fill(0);   text("Status", 310,390);

}
void movieEvent(Movie video) {
    video.read();
}
public void cor_do_texto(int theValue) {
  tcolor=theValue;
}
public void texto(String theValue) {
  tcontent=theValue;
}
public void tamanho_do_texto(int theValue) {
  tsize=int(theValue);
}
void mousePressed(){
  if((mouseX<100)&&(mouseY>360)) svar=1; 
  if((mouseX>100)&&(mouseX<200)&&(mouseY>360)) svar=2; 
  if((mouseX>200)&&(mouseX<300)&&(mouseY>360)) svar=3; 
  if((mouseX>300)&&(mouseX<400)&&(mouseY>360)) svar=4; 
  if((mouseX>100)&&(mouseX<200)&&(mouseY>360)) efeitodesom.play();
  if((mouseX>100)&&(mouseX<200)&&(mouseY>360)) efeitodesom.rewind();
  if((mouseX<100)&&(mouseY>360)) efeitodesom.play();
  if((mouseX<100)&&(mouseY>360)) efeitodesom.rewind();
  if((mouseX>200)&&(mouseX<300)&&(mouseY>360)) efeitodesom.play();
  if((mouseX>200)&&(mouseX<300)&&(mouseY>360)) efeitodesom.rewind();
  if((mouseX>300)&&(mouseX<400)&&(mouseY>360)) efeitodesom.play();
  if((mouseX>300)&&(mouseX<400)&&(mouseY>360)) efeitodesom.rewind();
}

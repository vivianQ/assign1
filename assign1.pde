PImage bg1img;
PImage bg2img;
PImage enemyimg;
PImage fighterimg;
PImage hpimg;
PImage treasureimg;
int tx,ty,hp,ex,ey,bx1;

void setup(){
  size(640,480);
  bx1=0;
  hp=floor(random(200));
  tx=floor(random(640));
  ty=floor(random(480));
  ex=floor(random(640));
  ey=floor(random(480));
  bg1img= loadImage("img/bg1.png");
  bg2img= loadImage("img/bg2.png");
  enemyimg= loadImage("img/enemy.png");
  fighterimg= loadImage("img/fighter.png");
  hpimg= loadImage("img/hp.png");
  treasureimg= loadImage("img/treasure.png"); 
  
}

void draw(){
  background(0);
  image(bg1img,bx1,0);
  image(bg2img,bx1+640,0);
  image(bg1img,bx1+1280,0);
  bx1--;
  bx1%=1280; 
  image(fighterimg,550,240);
    fill(255,0,0);
  rect(10,10,hp,20);
  image(hpimg,5,5);
  image(treasureimg,tx,ty );
  image(enemyimg,ex,ey );
  ex+=3;
  ex %= 640;
}

PImage bg1img;
PImage bg2img;
PImage enemyimg;
PImage fighterimg;
PImage hpimg;
PImage treasureimg;
int tx,ty,hp,ex,ey,bx;

void setup(){
  size(640,480);
  bx=0;
  hp=floor(random(200));
  tx=floor(random(640));
  ty=floor(random(480));
  ex=floor(random(640));
  ey=floor(random(480));
  bg1img= loadImage("assign1/img/bg1.png");
  bg2img= loadImage("assign1/img/bg2.png");
  enemyimg= loadImage("assign1/img/enemy.png");
  fighterimg= loadImage("assign1/img/fighter.png");
  hpimg= loadImage("assign1/img/hp.png");
  treasureimg= loadImage("assign1/img/treasure.png"); 
  
}

void draw(){
  image(bg1img,bx,0);
  image(bg2img,bx+640,0);
  bx--;
  bx%=1280;
  image(fighterimg,550,240 );
    fill(255,0,0);
  rect(10,10,hp,20);
  image(hpimg,5,5);
  image(treasureimg,tx,ty );
  image(enemyimg,ex,ey );
  ex+=3;
  ex %= 640;
}

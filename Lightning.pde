void setup (){
size(200,200);
frameRate(30);
}
  float x = ((float)Math.random()*200);
  float y = 0;
   int stoking=(((int)(Math.random()*255)));
   int opaq = 255;
     int a = 0;//score
void draw(){
  background(0);
  float Y = y+10+((float)Math.random()*5)-2;
  float X = x+(((float)Math.random()*21)-10);//lines
     float ex = mouseX-20;//box
  rect(ex,195,40,200);//box
  if(stoking<250){
  stoking++;
  } else{
  stoking=0;
  }
   if(opaq>100){//line color
  opaq--;
  } else{
  opaq=255;
  }
  stroke(stoking,255,255, opaq);
  if(y<200){
line(x,y,X,Y); //line maker
y=Y;
x=X;
  }else{
   x=(float)Math.random()*200;;
   y=0;
  }
  if(X >ex-20 && X<ex+20 && y > 190 && y<210){ //catch lightning
a++;
  }
    text(a,10,10) ;
}

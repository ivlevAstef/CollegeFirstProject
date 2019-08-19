unit sastavko;
interface
uses crt,graph,vari;
procedure sv_dop(x,x1,zz,y,y1,sv1,sv2,napr:integer);
procedure svesda(x,y,est,rast:integer);
procedure sastavka;
implementation
procedure sv_dop(x,x1,zz,y,y1,sv1,sv2,napr:integer);
begin
  if(getpixel(x+x1+zz,y+y1)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1+zz,y+y1,sv2);
  if(getpixel(x+x1-zz,y+y1)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1-zz,y+y1,sv2);
  if(getpixel(x+x1,y+y1+zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1,y+y1+zz,sv2);
  if(getpixel(x+x1,y+y1-zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1,y+y1-zz,sv2);
  if(getpixel(x+x1+zz,y+y1-zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1+zz,y+y1-zz,sv2);
  if(getpixel(x+x1+zz,y+y1+zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1+zz,y+y1+zz,sv2);
  if(getpixel(x+x1-zz,y+y1+zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1-zz,y+y1+zz,sv2);
  if(getpixel(x+x1-zz,y+y1-zz)=sv1)and(zz<>1)and(napr=0)then putpixel(x+x1-zz,y+y1-zz,sv2);
  if(getpixel(x+x1+zz,y+y1)=sv1)and(napr=1)then putpixel(x+x1+zz,y+y1,sv2);
  if(getpixel(x+x1-zz,y+y1)=sv1)and(napr=-1)then putpixel(x+x1-zz,y+y1,sv2);
  if(getpixel(x+x1,y+y1+zz)=sv1)and(napr=2)then putpixel(x+x1,y+y1+zz,sv2);
  if(getpixel(x+x1,y+y1-zz)=sv1)and(napr=-2)then putpixel(x+x1,y+y1-zz,sv2);
  if(getpixel(x+x1+zz,y+y1+zz)=sv1)and(napr=3)then putpixel(x+x1+zz,y+y1+zz,sv2);
  if(getpixel(x+x1+zz,y+y1-zz)=sv1)and(napr=4)then putpixel(x+x1+zz,y+y1-zz,sv2);
  if(getpixel(x+x1-zz,y+y1+zz)=sv1)and(napr=5)then putpixel(x+x1-zz,y+y1+zz,sv2);
  if(getpixel(x+x1-zz,y+y1-zz)=sv1)and(napr=6)then putpixel(x+x1-zz,y+y1-zz,sv2);
end;
procedure svesda(x,y,est,rast:integer);
var x1,zz,y1,nomer,napr,sv2:integer;
begin
  nomer:=1;
  repeat
    if(nomer=1)then begin x1:=0;y1:=0; sv2:=1; napr:=0;end;
    if(nomer=2)then begin x1:=2*rast;y1:=0; sv2:=2;napr:=1; end;
    if(nomer=3)then begin x1:=4*rast;y1:=0; sv2:=2;napr:=1; end;
    if(nomer=4)then begin x1:=6*rast;y1:=0; sv2:=3; napr:=1;end;
    if(nomer=5)then begin x1:=-2*rast;y1:=0; sv2:=2;napr:=-1; end;
    if(nomer=6)then begin x1:=-4*rast;y1:=0; sv2:=2;napr:=-1;end;
    if(nomer=7)then begin x1:=-6*rast;y1:=0; sv2:=3;napr:=-1;end;
    if(nomer=8)then begin x1:=0;y1:=2*rast; sv2:=2;napr:=2;end;
    if(nomer=9)then begin x1:=0;y1:=4*rast; sv2:=2;napr:=2;end;
    if(nomer=10)then begin x1:=0;y1:=6*rast; sv2:=3;napr:=2;end;
    if(nomer=11)then begin x1:=0;y1:=-2*rast;sv2:=2;napr:=-2; end;
    if(nomer=12)then begin x1:=0;y1:=-4*rast;sv2:=2;napr:=-2; end;
    if(nomer=13)then begin x1:=0;y1:=-6*rast;sv2:=3;napr:=-2; end;
    if(nomer=14)then begin x1:=2*rast;y1:=2*rast;sv2:=2;napr:=3; end;
    if(nomer=15)then begin x1:=2*rast;y1:=-2*rast;sv2:=2;napr:=4; end;
    if(nomer=16)then begin x1:=-2*rast;y1:=2*rast;sv2:=2;napr:=5; end;
    if(nomer=17)then begin x1:=-2*rast;y1:=-2*rast;sv2:=2;napr:=6; end;
    if(est<>0)then
    begin
      for zz:=0 to rast do
        sv_dop(x,x1,zz,y,y1,0,sv2,napr);
    end;
    if(est=0)then
    begin
      for zz:=0 to rast do
        sv_dop(x,x1,zz,y,y1,sv2,0,napr);
    end;
    nomer:=nomer+1;
  until nomer=18;
end;
procedure sastavka;
var sdf:string;
vrema,ddddd,r4d,g4d,b4d,r4,g4,b4,r,g,b,zz,rast,x,y,sv1,sv2:integer;
begin
  settextstyle(4,0,8);
  SetTextJustify(1,1);
  setcolor(4);
  outtextxy(320,40,'creator:');
  outtextxy(320,150,'Ivlev Aleksandr');
  outtextxy(320,240,'(Stef,ZX)');
  str(nastroil.versia:2:1,sdf);
  settextstyle(5,0,5);
  setcolor(2);
  r4d:=1;
  g4d:=2;
  b4d:=4;
  r4:=30;
  g4:=30;
  b4:=30;
  outtextxy(320,350,'version:'+sdf);
  settextstyle(5,0,5);
  outtextxy(320,400,'It is created in VKI');
  rast:=5;
  vrema:=0;
  ddddd:=3000;
  repeat
   if keypressed then
   begin
     ch:=readkey;
     if ch=#0 then ch:=readkey;
   end;
   if(vrema=10)then
   begin
     svesda(x,y,0,rast);
     rast:=random(5)+1;
     x:=random(getmaxx);
     y:=random(getmaxy);
     r:=random(20)+41;
     g:=random(20)+41;
     b:=random(20)+41;
     vrema:=0;
   end;
   setrgbpalette(pal.colors[4],r4,g4,b4);
   if(r4>60-abs(r4d))then r4d:=-r4d;
   if(g4>60-abs(g4d))then g4d:=-g4d;
   if(b4>60-abs(b4d))then b4d:=-b4d;
   if(r4<abs(r4d))then r4d:=-r4d;
   if(g4<abs(g4d))then g4d:=-g4d;
   if(b4<abs(b4d))then b4d:=-b4d;
   r4:=r4+r4d;
   g4:=g4+g4d;
   b4:=b4+b4d;
   setrgbpalette(pal.colors[1],r-vrema*2,g-vrema*2,b-vrema*2);
   setrgbpalette(pal.colors[2],r-10-vrema*2,g-10-vrema*2,b-10-vrema*2);
   setrgbpalette(pal.colors[3],r-20-vrema*2,g-10-vrema*2,b-10-vrema*2);
   vrema:=vrema+1;
   delay(0);
   if(vrema=1)then svesda(x,y,1,rast);
   {if(nastroil.eee>320)then
   for zz:=1 to round(nastroil.eee/320) do
     delay(nastroil.eee*2);
   ddddd:=(nastroil.eee*500)-round(nastroil.eee/320)*500;
   if(ddddd<0)then ddddd:=0;}
   delay(ddddd);
  until keypressed;
  vrema:=60;
  repeat
   setrgbpalette(pal.colors[1],r,g,b);
   setrgbpalette(pal.colors[2],r,g,b);
   setrgbpalette(pal.colors[3],r,g,b);
   setrgbpalette(pal.colors[4],r4,g4,b4);
   r4:=r4-1; g4:=g4-1; b4:=b4-1;
   r:=r-1; g:=g-1; b:=b-1;
   if(r4<0)then r4:=0; if(b4<0)then b4:=0; if(g4<0)then g4:=0;
   if(r<0)then r:=0; if(b<0)then b:=0; if(g<0)then g:=0;
   vrema:=vrema-1;
   {if(nastroil.eee>320)then
   for zz:=1 to round(nastroil.eee/320) do
     delay(nastroil.eee*2);
   ddddd:=(nastroil.eee*500)-round(nastroil.eee/320)*500;
   if(ddddd<0)then ddddd:=0;}
   delay(ddddd);
  until vrema=0;
  setcolor(4);
  settextstyle(4,0,5);
  setfillstyle(1,0);
  bar(0,0,getmaxx,getmaxy);
  ddddd:=round(ddddd/2);
  outtextxy(320,40,'presents:');
  repeat
   setrgbpalette(pal.colors[4],r4,g4,b4);
   r4:=r4+2; g4:=g4+1; b4:=b4+1;
   if(r4>60)then r4:=60; if(b4>60)then b4:=60; if(g4>60)then g4:=60;
   vrema:=vrema+1;
   {if(nastroil.eee>320)then
   for zz:=1 to round(nastroil.eee/320) do
     delay(nastroil.eee*2);
   ddddd:=(nastroil.eee*500)-round(nastroil.eee/320)*500;
   if(ddddd<0)then ddddd:=0;}
   delay(ddddd);
  until vrema>=60;
  x:=100;
  y:=-2;
  r:=2;
  b:=1;
  g:=1;
  repeat
  if keypressed then
   begin
     ch:=readkey;
     if ch=#0 then ch:=readkey;
   end;
  setcolor(0);
  SetUserCharSize(x,100,x,100);
  outtextxy(320,100,'escape from prison');
  x:=x-y;
  if(x<60)then y:=-y;
  if(x>250)then y:=-y;
  setrgbpalette(pal.colors[4],r4,g4,b4);
  if(r4>=60)then r:=-r; if(b4>=60)then b:=-b; if(g4>=60)then g:=-g;
  if(r4<0)then r:=-r; if(b4<0)then b:=-b; if(g4<0)then g:=-g;
  r4:=r4+r; g4:=g4+g; b4:=b4+b;
  setcolor(4);
  SetUserCharSize(x,100,x,100);
  outtextxy(320,100,'escape from prison');
  {if(nastroil.eee>320)then
   for zz:=1 to round(nastroil.eee/320) do
     delay(nastroil.eee*2);
   ddddd:=(nastroil.eee*500)-round(nastroil.eee/320)*500;
   if(ddddd<0)then ddddd:=0;}
   delay(ddddd);
  until keypressed;
  setfillstyle(1,0);
  bar(0,0,640,480);
  SetUserCharSize(100,100,100,100);
  r4:=r4-10; b4:=b4-10; g4:=g4-10;
  if(r4<0)then r4:=0; if(b4<0)then b4:=0; if(g4<0)then g4:=0;
  r4:=x;
  x:=0;
  setrgbpalette(pal.colors[1],r4,b4,g4);
  repeat
  setcolor(0);
  SetUserCharSize(x+100,100,x+100,100);
  outtextxy(320,40,'presents:');
  SetUserCharSize(x*2+r4,100,x*2+r4,100);
  outtextxy(320,100,'escape from prison');
  SetUserCharSize(x+1+100,100,x+1+100,100);
  outtextxy(320,40,'presents:');
  SetUserCharSize(x*2+1+r4,100,x*2+1+r4,100);
  outtextxy(320,100,'escape from prison');
  x:=x-1;
  setcolor(1);
  SetUserCharSize(x+1+100,100,x+1+100,100);
  outtextxy(320,40,'presents:');
  SetUserCharSize(x*2+1+r4,100,x*2+1+r4,100);
  outtextxy(320,100,'escape from prison');
  setcolor(4);
  SetUserCharSize(x+100,100,x+100,100);
  outtextxy(320,40,'presents:');
  SetUserCharSize(x*2+r4,100,x*2+r4,100);
  outtextxy(320,100,'escape from prison');
  {if(nastroil.eee>320)then
   for zz:=1 to round(nastroil.eee/320) do
     delay(nastroil.eee*2);
   ddddd:=(nastroil.eee*500)-round(nastroil.eee/320)*500;
   if(ddddd<0)then ddddd:=0;}
   delay(ddddd);
  until x<=-48;
  initgraph(gd,gm,'');
  cleardevice;
  SetTextJustify(0,2);
end;
end.
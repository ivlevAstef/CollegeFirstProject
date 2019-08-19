uses crt,graph;
const
kolvo=200;
type tkrug=record
x,y,cv:array[1..10]of integer;
nnx,nny:integer;
ugl:real;
t,v,vn:real;
end;
var
k:array[1..kolvo]of tkrug;
gd,gm,i,j:integer;
vrema2,vrema,kolizestvo,samed,r,g,b,n:integer;
pal:palettetype;
s:string;
begin
  gd:=detect;
  initgraph(gd,gm,'');
  getpalette(pal);
  randomize;
  repeat
  r:=random(30)+30;
  g:=random(30)+30;
  b:=random(30)+30;
  n:=random(3)+3;
  for i:=1 to 10 do
  begin
  r:=r-n;
  g:=g-n;
  b:=b-n;
  if(r<0)then r:=0; if(g<0)then g:=0; if(b<0)then b:=0;
  setrgbpalette(pal.colors[i],r,g,b);
  end;
  for i:=1 to 10 do k[1].cv[i]:=i;
  k[1].vn:=1200;
  k[1].ugl:=random(120)+30;
  if(k[1].ugl<70)then k[1].nnx:=0;
  if(k[1].ugl>120)then k[1].nnx:=640;
  if(k[1].ugl>=70)and(k[1].ugl<=120)then k[1].nnx:=320;
  k[1].nny:=450;
  k[1].y[1]:=k[1].nny;
  k[1].x[1]:=k[1].nnx;
  for i:=10 downto 2 do
    begin
      k[1].x[i]:=k[1].x[1];
      k[1].y[i]:=k[1].y[1];
    end;
  k[1].t:=0;
  vrema2:=0;
  vrema:=0;
  k[1].ugl:=(pi/180)*(k[1].ugl);
  samed:=200;
  kolizestvo:=0;
  repeat
    for i:=10 downto 2 do
    begin
      k[1].x[i]:=k[1].x[i-1];
      k[1].y[i]:=k[1].y[i-1];
    end;
    setcolor(0);
    for i:=2 to 10 do line(k[1].x[i],k[1].y[i],k[1].x[i-1],k[1].y[i-1]);
    j:=1;
    k[j].y[1]:=k[j].nny-(round((k[j].vn*sin(k[j].ugl)*k[j].t-((9.8*sqr(k[j].t))/2))/samed));
    k[j].x[1]:=k[j].nnx+(round((k[j].vn*cos(k[j].ugl)*k[j].t)/samed));
    k[1].t:=k[1].t+1;
    vrema2:=vrema2+1;
    for i:=2 to 9 do begin
    setcolor(k[1].cv[i]);
    line(k[1].x[i],k[1].y[i],k[1].x[i-1],k[1].y[i-1]);
    end;
    delay(2000);
    if(vrema2>80)and(vrema>2)then
    begin
      vrema:=0;
      for j:=1 to kolvo do
      for i:=1 to 10-kolizestvo do
      begin
        k[j].cv[i]:=k[j].cv[i+1];
        k[j].cv[10-kolizestvo]:=0;
      end;
      kolizestvo:=kolizestvo+1;
      if(kolizestvo>10)then kolizestvo:=10;
    end;
    vrema:=vrema+1;
    if(vrema2<=80)then
    if(k[1].y[1]<200)or(k[1].x[1]<320+40)and(k[1].nnx>320)
    or(k[1].x[1]>320-40)and(k[1].nnx<320)then vrema2:=80;
  until(keypressed)or(vrema2>=100);
  setcolor(0);
    for i:=2 to 10 do line(k[1].x[i],k[1].y[i],k[1].x[i-1],k[1].y[i-1]);
  delay(32000);
  randomize;
  for j:=2 to kolvo do
  begin
    for i:=1 to 10 do k[j].cv[i]:=i;
    k[j].vn:=random(500)+40;
    k[j].nnx:=k[1].x[1];
    k[j].nny:=k[1].y[1];
    k[j].y[1]:=k[j].nny;
    k[j].x[1]:=k[j].nnx;
    k[j].t:=0;
    k[j].ugl:=random(360);
    k[j].ugl:=(pi/180)*(k[j].ugl);
    for i:=10 downto 2 do
    begin
      k[j].x[i]:=k[j].x[1];
      k[j].y[i]:=k[j].y[1];
    end;
  end;
    j:=1;
    for i:=1 to 10 do k[j].cv[i]:=i;
    k[j].vn:=random(500)+40;
    k[j].nnx:=k[1].x[1];
    k[j].nny:=k[1].y[1];
    k[j].y[1]:=k[j].nny;
    k[j].x[1]:=k[j].nnx;
    k[j].t:=0;
    k[j].ugl:=random(360);
    k[j].ugl:=(pi/180)*(k[j].ugl);
    for i:=10 downto 2 do
    begin
      k[j].x[i]:=k[j].x[1];
      k[j].y[i]:=k[j].y[1];
    end;
  r:=random(30)+30;
  g:=random(30)+30;
  b:=random(30)+30;
  n:=random(3)+3;
  for i:=1 to 10 do
  begin
  r:=r-n;
  g:=g-n;
  b:=b-n;
  if(r<0)then r:=0; if(g<0)then g:=0; if(b<0)then b:=0;
  setrgbpalette(pal.colors[i],r,g,b);
  end;
  samed:=200;
  kolizestvo:=1;
  repeat
    for j:=1 to kolvo do
    for i:=10 downto 2 do
    begin
      k[j].x[i]:=k[j].x[i-1];
      k[j].y[i]:=k[j].y[i-1];
    end;
    setcolor(0);
    for j:=1 to kolvo do
    for i:=2 to 10 do line(k[j].x[i],k[j].y[i],k[j].x[i-1],k[j].y[i-1]);
    for j:=1 to kolvo do
    k[j].y[1]:=k[j].nny-(round((k[j].vn*sin(k[j].ugl)*k[j].t-((9.8*sqr(k[j].t))/2))/samed));
    for j:=1 to kolvo do
    k[j].x[1]:=k[j].nnx+(round((k[j].vn*cos(k[j].ugl)*k[j].t)/samed));
    for j:=1 to kolvo do
    k[j].t:=k[j].t+1;
    for j:=1 to kolvo do
    for i:=2 to 9 do begin
    setcolor(k[j].cv[i]);
    line(k[j].x[i],k[j].y[i],k[j].x[i-1],k[j].y[i-1]);
    end;
    delay(0);
    if(k[1].t>80)and(vrema>2)then
    begin
    vrema:=0;
    for j:=1 to kolvo do
    for i:=1 to 10-kolizestvo do
    begin
      k[j].cv[i]:=k[j].cv[i+1];
      k[j].cv[10-kolizestvo]:=0;
    end;
    kolizestvo:=kolizestvo+1;
      if(kolizestvo>10)then kolizestvo:=10;
    end;
    vrema:=vrema+1;
  until (keypressed)or(k[1].t>100);
    setcolor(0);
    for j:=1 to kolvo do
    for i:=2 to 10 do line(k[j].x[i],k[j].y[i],k[j].x[i-1],k[j].y[i-1]);
  until keypressed;
end.
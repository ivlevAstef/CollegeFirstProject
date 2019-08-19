uses crt,graph;
const
down=#80;
dinamit=#120;
up=#72;
a=#96;
left=#75;
right=#77;
esc=#27;
vrag=#9;
delet=#45;
enter=#13;
probel=#32;
type masiva=record
a:array[0..64,0..45]of integer;
x,y:integer;
ss:string;
end;
type vragi=record
atak,povor,zisn,x,y,vid:integer;
end;
type vsego=record
vs:integer;
end;
var
vss:vsego;
p:pointer;
vr:array[1..10]of vragi;
masiv:masiva;
vrp:array[0..20]of pointer;
nomera,reseta,tip,kol_vr,x,y,i,j,gd,gm:integer;
ch:char;
is,js:integer;
kar:array[0..30]of pointer;
procedure nom;
begin
nomera:=1;
end;
procedure sagruska_karti(i:integer);
var f:file of masiva;
nasvan:string;
begin
  str(i,nasvan);
  Assign(f,'data\cards\'+nasvan+'.kar');
  reset(f);
  read(f,masiv);
  close(f);
end;
procedure dani_kart_kol_load;
var f:file of vsego;
begin
  Assign(f,'data\cards\kolizestvo.dan');
  reset(f);
  read(f,vss);
  close(f);
end;
procedure dani_kart_kol_sav;
var f:file of vsego;
begin
  Assign(f,'data\cards\kolizestvo.dan');
  rewrite(F);
  write(f,vss);
  close(f);
end;
procedure save_karti(i:integer);
var f:file of masiva;
nasvan:string;
begin
  str(i,nasvan);
  Assign(f,'data\cards\'+nasvan+'.kar');
  rewrite(F);
  write(f,masiv);
  close(f);
end;
function loader(na:string):pointer;
var
   f:file;
   s:longint;
   p:pointer;
begin
     assign(f,na);
     reset(f,1);
     s:=filesize(f);
     getmem(p,s);
     blockread(f,p^,s);
     loader:=p;
     close(f);
end;
begin
  gd:=detect;
  initgraph(gd,gm,'');
  p:=loader('data/image/zel0');
  kar[0]:=loader('data/image/nesego');
  kar[1]:=loader('data/image/tv');
  kar[2]:=loader('data/image/zem');
  kar[3]:=loader('data/image/zem_tv');
  kar[4]:=loader('data/image/kirpiz');
  kar[5]:=loader('data/image/kamen');
  kar[6]:=loader('data/image/zeleso');
  kar[7]:=loader('data/image/les');
  kar[8]:=loader('data/image/ver');
  kar[9]:=loader('data/image/exito1');
  kar[10]:=loader('data/image/exitok');
  kar[11]:=loader('data/image/dinamitv');
  kar[12]:=loader('data/image/heatpl');
  kar[13]:=loader('data/image/raketav');
  kar[14]:=loader('data/image/kl1');
  kar[15]:=loader('data/image/kl2');
  kar[16]:=loader('data/image/kl3');
  kar[17]:=loader('data/image/kl4');
  kar[18]:=loader('data/image/kl5');
  kar[19]:=loader('data/image/dvz1');
  kar[20]:=loader('data/image/dvz2');
  kar[21]:=loader('data/image/dvz3');
  kar[22]:=loader('data/image/dvz4');
  kar[23]:=loader('data/image/dvz5');
  kar[24]:=loader('data/image/usiv');
  vrp[1]:=loader('data/image/vr1');
  vss.vs:=0;
  dani_kart_kol_load;
  nom;
  reseta:=1;
  if(nomera>vss.vs)then nomera:=vss.vs+1;
  if(nomera<vss.vs+1)then sagruska_karti(nomera);
  if(nomera=vss.vs+1)then vss.vs:=vss.vs+1;
  for j:=0 to 45 do
    for i:=0 to 64 do
      begin
        setfillstyle(1,12);
        x:=i*10;
        y:=j*10+40;
        IF(masiv.a[i][j]<=-1)then
        begin
          kol_vr:=kol_vr+1;
          vr[kol_vr].x:=i*10;
          vr[kol_vr].y:=j*10+40;
          vr[kol_vr].povor:=1;
          vr[kol_vr].atak:=abs(masiv.a[i][j]);
          putimage(vr[kol_vr].x,vr[kol_vr].y,vrp[1]^,0);
        end;
        if(masiv.a[i][j]>0)and(masiv.a[i][j]<256)then putimage(x,y,kar[masiv.a[i][j]]^,0);
      end;
    is:=1; js:=1;
    tip:=1;
    putimage(is*10,js*10+40,kar[tip]^,1);
    putimage(masiv.x,masiv.y,p^,1);
    repeat
      ch:=readkey;
      if ch=#0 then ch:=readkey;
      if(tip>=0)and(tip<>256)then putimage(is*10,js*10+40,kar[tip]^,1);
      if(tip=256)then putimage(is*10,js*10+40,p^,1);
      if(tip<0)then putimage(is*10,js*10+40,vrp[1]^,1);
      case ch of
        #48:tip:=10;
        delet:tip:=0;
        #49:tip:=1;
        #50:tip:=2;
        #51:tip:=3;
        #52:tip:=4;
        #53:tip:=5;
        #54:tip:=6;
        #55:tip:=7;
        #56:tip:=8;
        #57:tip:=9;
        #61:tip:=12;
        #113:tip:=13;
        #97:tip:=14;
        #115:tip:=15;
        #100:tip:=16;
        #102:tip:=17;
        #103:tip:=18;
        #104:tip:=19;
        #106:tip:=20;
        #107:tip:=21;
        #108:tip:=22;
        #59:tip:=23;
        'c':tip:=24;
        vrag:tip:=-1;
        dinamit:tip:=11;
        a:tip:=256;
        down:if(js<43)then js:=js+1;
        up:if(js>1)then js:=js-1;
        left:if(is>1)then is:=is-1;
        right:if(is<64)then is:=is+1;
        enter:
        begin
         if(tip>=19)and(tip<=23)then
         begin
         setfillstyle(1,0);
         bar(is*10,js*10+50,is*10+9,js*10+59);
         masiv.a[is][js+1]:=1000;
         end;
         if(tip>0)and(tip<>256)then putimage(is*10,js*10+40,kar[tip]^,0);
         if(tip<0)and(kol_vr<10)then putimage(is*10,js*10+40,vrp[1]^,0);
         if(tip<0)and(kol_vr<10)then kol_vr:=kol_vr+1;
         if(tip=0)then
         begin
         setfillstyle(1,0);
         bar(is*10,js*10+40,is*10+9,js*10+49);
         if(masiv.a[is][js]>=19)and(masiv.a[is][js]<=23)then
         begin
           masiv.a[is][js+1]:=0;
           bar(is*10,js*10+50,is*10+9,js*10+59);
         end;
         if(masiv.a[is][js]=1000)then
         begin
           masiv.a[is][js-1]:=0;
           bar(is*10,js*10+30,is*10+9,js*10+39);
         end;
         end;
         if(tip=256)then
         begin
           setfillstyle(1,0);
           bar(masiv.x,masiv.y,masiv.x+10,masiv.y+20);
           masiv.x:=is*10;
           masiv.y:=js*10+40;
           putimage(masiv.x,masiv.y,p^,0);
         end;
         if(tip=9)then
         begin
         for j:=0 to 45 do
         for i:=0 to 64 do
           begin
             x:=i*10;
             y:=j*10+40;
             setfillstyle(1,0);
             if(masiv.a[i][j]=9)then
             begin
              bar(x,y,x+10,y+19);
              masiv.a[i][j]:=0;
              break;
              end;
           end;
         end;
         if(tip<>256)then masiv.a[is][js]:=tip;
        end;
      end;
      if(tip>=0)and(tip<>256)then putimage(is*10,js*10+40,kar[tip]^,1);
      if(tip<0)then putimage(is*10,js*10+40,vrp[1]^,1);
      if(tip=256)then putimage(is*10,js*10+40,p^,1);
    until ch=esc;
    kol_vr:=0;
    for j:=0 to 45 do
    for i:=0 to 64 do
      begin
        setfillstyle(1,12);
        x:=i*10;
        y:=j*10+40;
        IF(masiv.a[i][j]<=-1)then
        begin
          kol_vr:=kol_vr+1;
          vr[kol_vr].x:=i*10;
          vr[kol_vr].y:=j*10+40;
          vr[kol_vr].povor:=1;
          vr[kol_vr].atak:=abs(masiv.a[i][j]);
        end;
        if(masiv.a[i][j]>0)and(masiv.a[i][j]<256)then putimage(x,y,kar[masiv.a[i][j]]^,0);
      end;
      {masiv.x:=50;
    masiv.y:=420;}
    if(reseta>=1)then dani_kart_kol_sav;
    closegraph;
    if(reseta=2)then writeln('text:');
    if(reseta=2)then readln(masiv.ss);
    if(reseta>=1)then save_karti(nomera);
end.
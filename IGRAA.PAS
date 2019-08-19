
unit igraa;
interface
uses crt,graph,vari,loaderi,dos,recordi;
procedure prisok;
procedure dop;
procedure selovek(x,y,cv:integer);
procedure anim_zel;
procedure vrag;
procedure orusiee(ii,vid:integer);
procedure vreman_zikl(ii:integer);
procedure heat(ii:integer);
procedure igra(uroven:integer);
implementation
procedure prisok;
var zikl:integer;
begin
  if(zel.stor=6)THEN
  begin
    pered:=0;
    i:=round((zel.x-2)/10);
    j:=round((zel.y-40-5)/10);
    leftRight:=0;
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    zel.y:=zel.y-1;
    vrema:=0;
    visot:=visot+1;
    if(visot>10+visot_pris)then zel.stor:=9;
    if(pered=1)then zel.stor:=0;
  end;
  if(zel.stor=4)THEN
  begin
    pered:=0;
    i:=round((zel.x-7-skor_zel)/10);
    j:=round((zel.y-40+14)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40+5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40-5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if(pered=0)then zel.x:=zel.x-1;
    if(pered=0)then zel.y:=zel.y-1;
    leftRight:=1;
    vrema:=0;
    visot:=visot+1;
    if(pered=1)then zel.stor:=0;
    if(pered=1)then zel.x:=zel.x+1;
    if(visot>10+visot_pris)then zel.stor:=7;
    if(pered=1)then zel.stor:=0;
  end;
  if(zel.stor=5)THEN
  begin
    pered:=0;
    i:=round((zel.x+3+skor_zel)/10);
    j:=round((zel.y-40+14)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40+5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40-5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if(pered=0)then zel.x:=zel.x+1;
    if(pered=0)then zel.y:=zel.y-1;
    leftRight:=2;
    vrema:=0;
    visot:=visot+1;
    if(pered=1)then zel.x:=zel.x-1;
    if(visot>10+visot_pris)then zel.stor:=8;
    if(pered=1)then zel.stor:=0;
  end;
  if(zel.stor=9)THEN
  begin
    vrema:=0;
    pered:=0;
    i:=round((zel.x-7-skor_zel)/10);
    j:=round((zel.y-40+15)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40+5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if(pered=0)then zel.y:=zel.y+1;
    leftRight:=0;
    visot:=visot-1;
    if(visot<1)then zel.stor:=0;
    if(pered=1)then zel.stor:=0;
  end;
  if(zel.stor=7)THEN
  begin
    pered:=0;
    i:=round((zel.x-7-skor_zel)/10);
    j:=round((zel.y-40+15)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40+5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if(pered=0)then zel.y:=zel.y+1;
    if(pered=0)then zel.x:=zel.x-1;
    leftRight:=1;
    vrema:=0;
    visot:=visot-1;
    if(pered=1)then zel.x:=zel.x+1;
    if(pered=1)then zel.stor:=0;
    if(visot<1)then zel.stor:=0;
  end;
  if(zel.stor=8)THEN
  begin
    pered:=0;
    i:=round((zel.x+3+skor_zel)/10);
    j:=round((zel.y-40+15)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    j:=round((zel.y-40+5)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))or
    (masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)or(masiv.a[i][j]=1000)then pered:=1;
    if(pered=0)then zel.y:=zel.y+1;
    if(pered=0)then zel.x:=zel.x+1;
    leftRight:=2;
    vrema:=0;
    visot:=visot-1;
    if(pered=1)then zel.x:=zel.x-1;
    if(pered=1)then zel.stor:=0;
    if(visot<1)then zel.stor:=0;
  end;
  if(zel.stor=0)then visot:=0;
  if((visot>0)and(visot<3))then zel.vid:=1;
  if((visot>=3)and(visot<6))then zel.vid:=2;
  if((visot>=6)and(visot<9))then zel.vid:=3;
  if((visot>=9))then zel.vid:=4;
end;
procedure dop;
var i,j,zikl:integer;
begin
  pered:=0;
  j:=round((zel.y-40+15)/10);
  for zikl:=-skor_zel-1 to skor_zel do
  begin
    i:=round((zel.x+zikl-2)/10);
    if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=7))then pered:=1;
  end;
  if(pered=0)then zel.y:=zel.y+1;
  if(pered=0)then skor_pad:=skor_pad+1;
  if(pered=1)then
  begin
    if(skor_pad>max_visot)then zel.zisn:=zel.zisn-skor_pad+max_visot;
    skor_pad:=0;
  end;
end;
procedure selovek(x,y,cv:integer);
begin
putimage(x,y,zel.p[cv]^,1);
end;
procedure anim_zel;
begin
    if(priset>0)then selovek(zel.x,zel.y+11,11);
    if(zel.combo[1]=3)and(leftright=1)then
    begin
      if(zel.vid=1)then selovek(zel.x-3,zel.y-4,13);
      if(zel.vid=2)then selovek(zel.x-3,zel.y,13);
      if(zel.vid=3)then selovek(zel.x-3,zel.y,13);
    end;
    if(zel.combo[1]=3)and(leftright=2)then
    begin
      if(zel.vid=1)then selovek(zel.x-11,zel.y,12);
      if(zel.vid=2)then selovek(zel.x-11,zel.y,12);
      if(zel.vid=3)then selovek(zel.x-11,zel.y-4,12);
    end;
    if(uhvat<=0)and(priset=0)and(zel.combo[1]<>3)then
    begin
      if(zel.stor=0)then selovek(zel.x,zel.y,0);
      if((zel.vid=1)and(zel.stor=1))then selovek(zel.x,zel.y,1);
      if((zel.vid=2)and(zel.stor=1))then selovek(zel.x,zel.y,2);
      if((zel.vid=3)and(zel.stor=1))then selovek(zel.x-2,zel.y,3);
      if((zel.vid=1)and(zel.stor=2))then selovek(zel.x-2,zel.y,4);
      if((zel.vid=2)and(zel.stor=2))then selovek(zel.x,zel.y,5);
      if((zel.vid=3)and(zel.stor=2))then selovek(zel.x,zel.y,6);
      if((zel.vid=1)and(zel.stor>2))then selovek(zel.x,zel.y,6);
      if((zel.vid=1)and(zel.stor>2))then selovek(zel.x,zel.y,6);
      if((zel.vid=1)and(zel.stor>2))then selovek(zel.x,zel.y,6);
      if((zel.vid=1)and(zel.stor>=4)and(zel.stor<=9))then selovek(zel.x,zel.y,7);
      if((zel.vid=2)and(zel.stor>=4)and(zel.stor<=9))then selovek(zel.x,zel.y,8);
      if((zel.vid=3)and(zel.stor>=4)and(zel.stor<=9))then selovek(zel.x,zel.y,9);
      if((zel.vid=4)and(zel.stor>=4)and(zel.stor<=9))then selovek(zel.x,zel.y,10);
    end;
    if((uhvat=1))then selovek(zel.x,zel.y,0);
    if((uhvat=2))then
    begin
    if(leftright<>1)and(leftright<>2)then selovek(zel.x,zel.y,14);
    if(leftright=1)then
    begin
    if(zel.vid=1)then selovek(zel.x,zel.y,15);
    if(zel.vid=2)then selovek(zel.x,zel.y,17);
    if(zel.vid=3)then selovek(zel.x,zel.y,19);
    end;
    if(leftright=2)then
    begin
    if(zel.vid=1)then selovek(zel.x,zel.y,16);
    if(zel.vid=2)then selovek(zel.x,zel.y,18);
    if(zel.vid=3)then selovek(zel.x,zel.y,20);
    end;
    end;
end;
procedure anim_vrag(iji:integer);
begin
  if(vr[iji].vid=1)and(vr[iji].pol=1)then putimage(vr[iji].x,vr[iji].y,vrp[1]^,1);
  if(vr[iji].vid=1)and(vr[iji].pol=2)then putimage(vr[iji].x,vr[iji].y+1,vrp[3]^,1);
end;
procedure vrag;
var iji,fg,kk:integer;
begin
  vremavr:=vremavr+1;
  for iji:=1 to kol_vr do
  begin
    if(vr[iji].zisn>0)then
    begin
    anim_vrag(iji);
    pered:=0;
    i:=round((vr[iji].x+2)/10);
    j:=round((vr[iji].y+13-48)/10);
    if vremavr mod vr[iji].vr=0 then vr[iji].pol:=vr[iji].pol+1;
    if(vr[iji].pol>2)then vr[iji].pol:=1;
    if(vr[iji].x>=b[1].x-10)and(vr[iji].x<=b[1].x+20)and(vr[iji].y>=b[1].y-17)and(vr[iji].y<=b[1].y+27)and(b[1].vrema<0)then
      vr[iji].zisn:=vr[iji].zisn-20;
    for kk:=2 to 3 do
    if(vr[iji].x>=b[kk].x)and(vr[iji].x<=b[kk].x+10)and(vr[iji].y>=b[kk].y-7)and(vr[iji].y<=b[kk].y+10-7)and(b[kk].vrema>0)then
    begin
      putimage(b[kk].x,b[kk].y,b[kk].p^,1);
      b[kk].vrema:=0;
      if(kk=3)then vr[iji].zisn:=vr[iji].zisn-1;
      if(kk=2)then vr[iji].zisn:=vr[iji].zisn-5;
    end;
    if(vr[iji].zisn<=0)then
    begin
      gettime(zas,min,sek,dopol);
      settime(zas,min,sek-5,dopol);
      opit:=opit+vr[iji].vid*20;
    end;
    if((masiv.a[i][j]<1)or(masiv.a[i][j]>7))then pered:=10;
    if(pered=10)then vr[iji].y:=vr[iji].y+1;
    str(masiv.a[i][j],s);
    setcolor(12);
    settextstyle(0,0,1);
    if(pered<>10)and(vr[iji].zisn>0)then
    begin
      for i:=0 to 19 do
      begin
        if(vr[iji].x<zel.x)and(zel.y+i=vr[iji].y+3)and(abs(vr[iji].x-zel.x)<=50)then pered:=1;
        if(vr[iji].x>zel.x)and(zel.y+i=vr[iji].y+3)and(abs(vr[iji].x-zel.x)<=50)then pered:=-1;
      end;
      i:=round((vr[iji].x+2)/10);
      j:=round((vr[iji].y-41)/10);
      for fg:=1 to 5 do
      begin
        if(masiv.a[i+fg*pered][j]>=1)and(masiv.a[i+fg*pered][j]<=6)and(fg*10<=abs(vr[iji].x-zel.x))then
        begin
          pered:=0;
          break;
        end;
      end;
      if(pered<>0)then
      begin
        for i:=-10 to 10 do
          if(vr[iji].x+i=zel.x)then zel.zisn:=zel.zisn-vr[iji].atak;
      if(pered<0)then i:=round((vr[iji].x+pered-2)/10);
      if(pered>0)then i:=round((vr[iji].x+pered+2)/10);
      j:=round((vr[iji].y+5-48)/10);
      if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then pered:=0;
      j:=round((vr[iji].y+15-48)/10);
      if((masiv.a[i][j]<1)or(masiv.a[i][j]>7))then pered:=0;
      vr[iji].x:=vr[iji].x+pered;
      end;
      if(pered=0)then
      begin
        if(vr[iji].povor<0)then i:=round((vr[iji].x+vr[iji].povor-2)/10);
        if(vr[iji].povor>0)then i:=round((vr[iji].x+vr[iji].povor+2)/10);
        j:=round((vr[iji].y+5-48)/10);
        if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then vr[iji].povor:=-vr[iji].povor;
        j:=round((vr[iji].y+15-48)/10);
        if((masiv.a[i][j]<1)or(masiv.a[i][j]>7))then vr[iji].povor:=-vr[iji].povor;
        vr[iji].x:=vr[iji].x+vr[iji].povor;
      end;
    end;
  if(vr[iji].zisn>0)then anim_vrag(iji);
    end;
  end;
  if(vremavr>=100)then vremavr:=0;
end;
procedure orusiee(ii,vid:integer);
begin
    if(ii=1)then b[vid].kol2:=b[vid].kol;
    if(ii=2)then
    begin
      if(b[vid].kol>b[vid].kol2)then
      begin
        for j:=b[vid].kol2+121 to b[vid].kol+121 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=6)then putpixel(j,i,10);
          end;
      end;
      if(b[vid].kol<b[vid].kol2)then
      begin
        for j:=b[vid].kol+121 to b[vid].kol2+121 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=10)then putpixel(j,i,6);
          end;
      end;
    end;
end;
procedure vreman_zikl(ii:integer);
begin
  if(ii=1)then
  begin
    j:=round(vrema_medl/2)+220;
    for i:=5 to 26 do
      if(getpixel(j,i)=7)then putpixel(j,i,10);
  end;
  if(ii=2)then
  begin
    j:=round(vrema_medl/2)+220;
    for i:=5 to 26 do
      if(getpixel(j,i)=10)then putpixel(j,i,7);
  end;
end;
procedure heat(ii:integer);
var ssd:string;
begin
  if(ii=1)then zi1:=zel.zisn;
  if(ii=2)then zi2:=zel.zisn;
  if(ii=2)then
  begin
    SetTextJustify(0,2);
    setfillstyle(1,9);
    if(zi2<68)and(zi2>35)then bar(49,12,13+zi2,20);
    if(zi2>=68)then bar(49,12,68+13,20);
    setfillstyle(1,14);
    if(zi2<68)then bar(13+zi2,12,68+13,20);
    Str(zel.zisn,ssd);
    if(zi2<=100)and(zi2>76)then setcolor(10);
    if(zi2<=76)and(zi2>34)then setcolor(3);
    if(zi2<=34)and(zi2>8)then setcolor(6);
    if(zi2<=8)and(zi2>1)then setcolor(12);
    if(zi2=1)then setcolor(4);
    settextstyle(0,0,1);
    outtextxy(50,12,ssd+'%');
    if(zi2>zi1)then
    begin
      for j:=zi1+13 to zi2+13 do
        for i:=5 to 26 do
        begin
        if(getpixel(j,i)=14)then putpixel(j,i,9);
        end;
    end;
    if(zi2<zi1)then
    begin
      for j:=zi2+13 to zi1+13 do
        for i:=5 to 26 do
        begin
        if(getpixel(j,i)=9)then putpixel(j,i,14);
        end;
    end;
  end;
end;
procedure igra(uroven:integer);
var ssd:string;
i2,j2:integer;
vremazz,exito,kk,haa:integer;
s2:string;
rec:trecordi;
begin
  for haa:=1 to 2 do
  zel.combo[haa]:=0;
  for i:=1 to 10 do
  vr[i].pol:=1;
  settime(0,0,0,0);
  exito:=0;
repeat
  settextstyle(0,0,2);
  if(kol_klu=0)then kar[9]:=loader('data/image/exito2');
  if(kol_klu=0)then putimage(iex*10,jex*10+40,kar[9]^,0);
  if(kol_klu=0)then kol_klu:=-1;
  anim_zel;
  ch:='[';
  heat(1);
  orusiee(1,Dstoit);
  if keypressed then ch:=readkey;
    if ch=#0 then ch:=readkey;
    pered:=0;
    if((zel.stor=9)or(zel.stor=8)or(zel.stor=7)or(zel.stor=5)or(zel.stor=6)or(zel.stor=4))then pered:=1;
    if ch=#49 then
      begin
        putimage(185,10,menup[4]^,1);
        menup[4]:=loader('data/image/oru1');
        dstoit:=1;
        putimage(185,10,menup[4]^,1);
        for j:=121 to b[dstoit].kol+121 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=6)then putpixel(j,i,10);
          end;
        for j:=123+b[dstoit].kol to 190 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=10)then putpixel(j,i,6);
          end;
        end;
     if ch= #50 then
      begin
        putimage(185,10,menup[4]^,1);
        menup[4]:=loader('data/image/oru2');
        dstoit:=2;
        putimage(185,10,menup[4]^,1);
        for j:=121 to b[dstoit].kol+121 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=6)then putpixel(j,i,10);
          end;
        for j:=123+b[dstoit].kol to 190 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=10)then putpixel(j,i,6);
          end;
      end;
      if ch= #51 then
      begin
        putimage(185,10,menup[4]^,1);
        menup[4]:=loader('data/image/oru3');
        dstoit:=3;
        putimage(185,10,menup[4]^,1);
        for j:=121 to b[dstoit].kol+121 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=6)then putpixel(j,i,10);
          end;
        for j:=123+b[dstoit].kol to 190 do
          for i:=5 to 26 do
          begin
          if(getpixel(j,i)=10)then putpixel(j,i,6);
          end;
      end;
      if ch=zamedlenie then
      begin
        pered:=0;
        if(medlenie=false)and(vrema_medl>0)then
        begin
          medlenie:=true;
          pered:=1;
        end;
        if(medlenie=true)and(pered=0)then medlenie:=false;
      end;
      if ch=dinamit then
      if(b[Dstoit].vrema=0)and(b[Dstoit].kol>0)then
      begin
       if(dstoit=2)then
       begin
         b[Dstoit].kol:=b[Dstoit].kol-10;
         b[Dstoit].vrema:=5;
         b[Dstoit].x:=zel.x;
         b[Dstoit].y:=zel.y+5;
         if(priset=1)then b[Dstoit].y:=zel.y+15;
         if(leftRight=1)then b[Dstoit].skor:=-2;
         if(leftRight=2)then b[Dstoit].skor:=2;
         if(leftRight=0)then b[Dstoit].vrema:=0;
         if(leftRight=2)then b[2].p:=loader('data/image/raketa');
         if(leftRight=1)then b[2].p:=loader('data/image/raketa2');
         if(leftRight<>0)then putimage(b[Dstoit].x,b[Dstoit].y,b[Dstoit].p^,1);
       end;
       if(dstoit=1)then
       begin
         b[Dstoit].kol:=b[Dstoit].kol-1;
         b[1].p:=loader('data/image/dinamit');
         b[Dstoit].vrema:=5;
         b[Dstoit].x:=zel.x;
         b[Dstoit].y:=zel.y+14;
         putimage(b[Dstoit].x,b[Dstoit].y,b[Dstoit].p^,1);
       end;
       if(dstoit=3)then
       begin
         b[Dstoit].kol:=b[Dstoit].kol-1;
         b[3].p:=loader('data/image/usi');
         b[Dstoit].vrema:=1;
         b[Dstoit].x:=zel.x;
         b[Dstoit].y:=zel.y+3;
         if(priset=1)then b[Dstoit].y:=zel.y+15;
         if(leftright=2)then b[Dstoit].skor:=2;
         if(leftright=1)then b[Dstoit].skor:=-2;
         putimage(b[Dstoit].x,b[Dstoit].y,b[Dstoit].p^,1);
       end;
      end;
      if ch=prised then
      if(uhvat=0)then priset:=1;
      if ch=down then
      begin
        vrema:=0;
        zel.combo[2]:=0;
        leftRight:=0;
        if(priset>0)then priset:=0;
        if(uhvat=0)then uhvat:=-1;
        if(uhvat=2)then uhvat:=0;
        zel.combo[1]:=0;
        if(uhvat=1)then
        begin
          skor_zel:=1;
          i:=round((zel.x-3)/10);
          pered:=0;
          for zikl:=10 to 13 do
          begin
            j:=round((zel.y-35+skor_zel+zikl)/10);
            if(masiv.a[i][j]=7)or(masiv.a[i][j]=0)and(masiv.a[i][j-1]=7)then pered:=1;
          end;
          if(pered=1)then zel.x:=i*10+2;
          if(pered=1)then zel.y:=zel.y+1+skor_zel
          else uhvat:=0;
        end;
      end;
      if ch=up then
      begin
        i:=round((zel.x-3)/10);
        j:=round((zel.y-40+3)/10);
        if(priset>0)then
        if((masiv.a[i][j]<1)or(masiv.a[i][j]>6))then priset:=0;
        if((masiv.a[i+1][j+1]>=1)and(masiv.a[i+1][j+1]<=6))and(leftright=2)and(zel.stor=0)then
        if(masiv.a[i+1][j]<1)or(masiv.a[i+1][j]>6)then begin
          zel.y:=zel.y-10; zel.x:=zel.x+5;
        end;
        if((masiv.a[i-1][j+1]>=1)and(masiv.a[i-1][j+1]<=6))and(leftright=1)and(zel.stor=0)then
        if(masiv.a[i-1][j]<1)or(masiv.a[i-1][j]>6)then begin
          zel.y:=zel.y-10; zel.x:=zel.x-5;
        end;
        if((masiv.a[i-1][j]>=1)and(masiv.a[i-1][j]<=6))and(leftright=1)and(zel.combo[2]=0)then
         if((masiv.a[i-1][j-1]<1)or(masiv.a[i-1][j-1]>6))then
           if((masiv.a[i-1][j-2]<1)or(masiv.a[i-1][j-2]>6))then
             begin zel.combo[2]:=1; vremazz:=0;end;
        if((masiv.a[i+1][j]>=1)and(masiv.a[i+1][j]<=6))and(leftright=2)and(zel.combo[2]=0)then
          if((masiv.a[i-1][j-1]<1)or(masiv.a[i-1][j-1]>6))then
            if((masiv.a[i-1][j-2]<1)or(masiv.a[i-1][j-2]>6))then
             begin zel.combo[2]:=1;vremazz:=0; end;
        vrema:=0;
        if(uhvat=0)then uhvat:=-1;
        if(zel.combo[1]=1)and(leftright=1)then
        if(masiv.a[i-1][j+1]>=1)and(masiv.a[i-1][j+1]<=6)then
        if(masiv.a[i-1][j]>=1)and(masiv.a[i-1][j]<=6)then
        if(masiv.a[i-1][j-1]>=1)and(masiv.a[i-1][j-1]<=6)then
        if(masiv.a[i-1][j-2]>=1)and(masiv.a[i-1][j-2]<=6)then
          zel.combo[1]:=2;
        if(zel.combo[1]=1)and(leftright=2)then
        if(masiv.a[i+1][j+1]>=1)and(masiv.a[i+1][j+1]<=6)then
        if(masiv.a[i+1][j]>=1)and(masiv.a[i+1][j]<=6)then
        if(masiv.a[i+1][j-1]>=1)and(masiv.a[i+1][j-1]<=6)then
        if(masiv.a[i+1][j-2]>=1)and(masiv.a[i+1][j-2]<=6)then
          zel.combo[1]:=2;
        if(zel.combo[1]<>2)then leftRight:=0;
        if(zel.combo[1]<>2)then zel.combo[1]:=0;
        if(uhvat=1)then
        begin
          skor_zel:=1;
          i:=round((zel.x-3)/10);
          for zikl:=0 to 3 do
          begin
            j:=round((zel.y-47-skor_zel+zikl)/10);
            if(masiv.a[i][j]=7)or(masiv.a[i][j]=0)and(masiv.a[i][j+2]=7)then pered:=1;
          end;
          if(pered=1)then zel.x:=i*10+2;
          if(pered=1)then zel.y:=zel.y-1-skor_zel
          else uhvat:=0;
        end;
      end;
      if ch=left then
      if(pered=0)then
      begin
        if(leftright=2)then zel.combo[2]:=0;
        if(leftright=1)and(zel.combo[2]=1)then
        begin
          zel.x:=zel.x-6;
          zel.y:=zel.y-21;
          zel.combo[2]:=0;
        end;
        if(skor_zel=2)then skor_vr:=skor_vr+1;
        if(zel.combo[1]=3)then
        begin
          if(leftright=1)then zel.x:=zel.x+3;
          if(leftright=2)then zel.x:=zel.x-3;
        end;
        leftRight:=1;
        if(zel.combo[1]=3)then zel.combo[1]:=4
        else
        begin
          for haa:=1 to 2 do
          if(zel.combo[haa]<>0)then zel.combo[haa]:=0;
          zel.combo[1]:=1;
        end;
        if(skor_vr>100)then skor_zel:=1;
        if(skor_zel=1)then skor_vr:=skor_vr-1;
        if(skor_zel=0)then skor_vr:=skor_vr-2;
        if(skor_vr=0)then skor_vr:=0;
        if(uhvat=1)then uhvat:=0;
        vrema:=0;
        i:=round((zel.x-7-skor_zel)/10);
        j:=round((zel.y-40+14)/10);
        if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then pered:=1;
        if(priset=0)then
        begin
          j:=round((zel.y-40+3)/10);
          if(i=iex)and(j=jex)and(kol_klu<=0)then exito:=1;
          if(i=iex)and(j=jex)and(kol_klu<=0)then sav.uroven:=sav.uroven+1;
          if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then pered:=1;
        end;
        if(uhvat=2)then
        begin
          skor_zel:=1;
          j:=round((zel.y-40)/10);
          pered:=1;
          if((masiv.a[i][j]=8))then pered:=0;
        end;
        j:=round((zel.y-40+10)/10);
        if(masiv.a[i][j]=1000)then pered:=1;
        if(pered=0)and(zel.combo[1]<>4)then zel.x:=zel.x-1-skor_zel;
        if(pered=0)then zel.stor:=1;
        zel.vid:=zel.vid+1;
        if(zel.vid>3)then zel.vid:=1;
      end;
      if ch=right then
      if(pered=0)then
      begin
        if(leftright=1)then zel.combo[2]:=0;
        if(leftright=2)and(zel.combo[2]=1)then
        begin
          zel.x:=zel.x+6;
          zel.y:=zel.y-21;
          zel.combo[2]:=0;
        end;
        if(skor_zel=2)then skor_vr:=skor_vr+1;
        if(skor_vr>100)then skor_zel:=1;
        if(skor_zel=1)then skor_vr:=skor_vr-1;
        if(skor_zel=0)then skor_vr:=skor_vr-2;
        if(skor_vr=0)then skor_vr:=0;
        if(uhvat=1)then uhvat:=0;
        vrema:=0;
        if(zel.combo[1]=3)then
        begin
          if(leftright=1)then zel.x:=zel.x+3;
          if(leftright=2)then zel.x:=zel.x-3;
        end;
        leftRight:=2;
        if(zel.combo[1]=3)then zel.combo[1]:=4
        else
        begin
          for haa:=1 to 2 do
            if(zel.combo[haa]<>0)then zel.combo[haa]:=0;
            zel.combo[1]:=1;
        end;
        pered:=0;
        i:=round((zel.x+3+skor_zel)/10);
        j:=round((zel.y-40+14)/10);
        if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then pered:=1;
        if(priset=0)then
        begin
          j:=round((zel.y-40+3)/10);
          if(i=iex)and(j=jex)and(kol_klu<=0)then exito:=1;
          if(i=iex)and(j=jex)and(kol_klu<=0)then sav.uroven:=sav.uroven+1;
          if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then pered:=1;
        end;
        if(uhvat=2)then
        begin
          skor_zel:=1;
          j:=round((zel.y-40)/10);
          pered:=1;
          if((masiv.a[i][j]=8))then pered:=0;
        end;
        j:=round((zel.y-40+10)/10);
        if(masiv.a[i][j]=1000)then pered:=1;
        if(pered=0)and(zel.combo[1]<>4)then zel.x:=zel.x+1+skor_zel;
        if(pered=0)then zel.stor:=2;
        zel.vid:=zel.vid+1;
        if(zel.vid>3)then zel.vid:=1;
      end;
      if ch=probel then
      if((skor_pad<3)and(pered=0))then
      begin
        zel.combo[2]:=0;
        vrema:=0;
        visot:=0;
        pered:=0;
        uhvat:=0;
        if(zel.combo[1]=3)then
        begin
          if(leftright=1)then zel.x:=zel.x+3;
          if(leftright=2)then zel.x:=zel.x-3;
        end;
        for haa:=1 to 2 do
        if(zel.combo[haa]<>0)then zel.combo[haa]:=0;
        if(zel.stor=2)or(zel.stor=1)then pered:=1;
        if(zel.stor=1)then leftRight:=1;
        if(zel.stor=2)then leftRight:=2;
        if(pered=0)then zel.stor:=6;
        if(zel.stor=1)then zel.stor:=4;
        if(zel.stor=2)then zel.stor:=5;
      end;
      if zel.combo[2]=1 then vrema:=0;
    if(zel.combo[1]=3)then
    begin
      zel.y:=zel.y-1;
      {vrema:=0;}
      uhvat:=0;
      if(leftright=1)then i:=round((zel.x+2)/10);
      if(leftright=2)then i:=round((zel.x+1)/10);
      j:=round((zel.y-40-3)/10);
      if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=7))then
      begin
        zel.combo[1]:=0;
        if(leftright=1)then zel.x:=zel.x+3;
        if(leftright=2)then zel.x:=zel.x-3;
        vrema:=20;
      end;
      if(leftright=1)then i:=round((zel.x+12)/10);
      if(leftright=2)then i:=round((zel.x-10)/10);
      j:=round((zel.y-40-9)/10);
      zel.vid:=zel.vid+1;
      if(zel.vid>3)then  zel.vid:=1;
      if(zel.vid=1)then zel.p[12]:=loader('data/image/verzel1');
      if(zel.vid=1)then zel.p[13]:=loader('data/image/verzel4');
      if(zel.vid=2)then zel.p[12]:=loader('data/image/verzel2');
      if(zel.vid=2)then zel.p[13]:=loader('data/image/verzel5');
      if(zel.vid=3)then zel.p[12]:=loader('data/image/verzel3');
      if(zel.vid=3)then zel.p[13]:=loader('data/image/verzel6');
      if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=7))then
      begin
        zel.combo[1]:=0;
        if(leftright=1)then zel.x:=zel.x+3;
        if(leftright=2)then zel.x:=zel.x-3;
        vrema:=20;
      end;
    end;
    if(zel.combo[1]=2)then
    begin
      vrema:=0;
      if(leftright=2)then
      begin
        i:=round((zel.x+3+skor_zel)/10);
        j:=round((zel.y-40+14)/10);
        if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then zel.combo[1]:=3;
      end;
      if(leftright=1)then
      begin
        i:=round((zel.x-7-skor_zel)/10);
        j:=round((zel.y-40+14)/10);
        if((masiv.a[i][j]>=1)and(masiv.a[i][j]<=6))then zel.combo[1]:=3;
      end;
    end;
    pered:=0;
    vrag;
    for kk:=1 to 3 do
    begin
      if(kk=3)and(b[kk].vrema<>0)then
      begin
        putimage(b[kk].x,b[kk].y,b[kk].p^,1);
        i:=round((b[kk].x-5)/10);
        j:=round((b[kk].y-40-1)/10);
        if(masiv.a[i][j]=0)or(masiv.a[i][j]=10)or(masiv.a[i][j]=9)or(masiv.a[i][j]>255)then
        begin
          b[kk].x:=b[kk].x+b[kk].skor;
          putimage(b[kk].x,b[kk].y,b[kk].p^,1);
        end
        else b[kk].vrema:=0;
      end;
    if(b[kk].vrema<0)then
      begin
        b[kk].vrema:=b[kk].vrema-1;
        if(kk=1)then
        begin
          if(b[kk].vrema<30)then
          begin
            b[kk].vrema:=0;
            i:=round((b[kk].x)/10);
            j:=round((b[kk].y-40-2)/10);
            if(masiv.a[i-1][j]=0)then putimage((i-1)*10,j*10+40,vrp[2]^,1);
            if(masiv.a[i-1][j]=5)then putimage((i-1)*10,j*10+40,vrp[2]^,1);
            if(masiv.a[i-1][j]=5)then masiv.a[i-1][j]:=257;
            if(masiv.a[i+1][j]=0)then putimage((i+1)*10,j*10+40,vrp[2]^,1);
            if(masiv.a[i+1][j]=5)then putimage((i+1)*10,j*10+40,vrp[2]^,1);
            if(masiv.a[i+1][j]=5)then masiv.a[i+1][j]:=257;
            if(masiv.a[i][j-1]=0)then putimage(i*10,(j-1)*10+40,vrp[2]^,1);
            if(masiv.a[i][j-1]=5)then putimage(i*10,(j-1)*10+40,vrp[2]^,1);
            if(masiv.a[i][j-1]=5)then masiv.a[i][j-1]:=257;
            if(masiv.a[i-1][j]=257)then putimage((i-1)*10,j*10+40,rasgrom[1]^,1);
            if(masiv.a[i-1][j]=258)then putimage((i-1)*10,j*10+40,rasgrom[2]^,1);
            if(masiv.a[i-1][j]=258)or(masiv.a[i-1][j]=257)then masiv.a[i-1][j]:=0;
            if(masiv.a[i][j+1]=0)then putimage(i*10,(j+1)*10+40,vrp[2]^,1);
            if(masiv.a[i][j+1]=5)then putimage(i*10,(j+1)*10+40,vrp[2]^,1);
            if(masiv.a[i][j+1]=5)then masiv.a[i][j+1]:=257;
          end;
        end;
      end;
    if(b[kk].vrema>0)then
    begin
      b[kk].vrema:=b[kk].vrema+1;
      if(kk=2)then
      begin
        putimage(b[kk].x,b[kk].y,b[kk].p^,1);
        i:=round((b[kk].x+b[kk].skor)/10);
        j:=round((b[kk].y-40-1)/10);
        if(masiv.a[i][j]=0)or(masiv.a[i][j]=10)or(masiv.a[i][j]=9)or(masiv.a[i][j]>255)then
        begin
          b[kk].x:=b[kk].x+b[kk].skor;
          putimage(b[kk].x,b[kk].y,b[kk].p^,1);
        end
        else
        begin
          if(masiv.a[i][j]=5)then
          begin
            putimage(i*10,j*10+40,kar[5]^,1);
            putimage(i*10,j*10+40,rasgrom[1]^,1);
            masiv.a[i][j]:=257;
          end;
          b[kk].vrema:=0;
        end;
      end;
      if(b[kk].vrema>=200)and(kk=1)then
      begin
        b[kk].vrema:=-10;
        i:=round((b[kk].x)/10);
        j:=round((b[kk].y-40-2)/10);
        putimage(b[kk].x,b[kk].y,b[kk].p^,1);
        if(masiv.a[i-1][j]=5)then putimage((i-1)*10,j*10+40,kar[5]^,1);
        if(masiv.a[i-1][j]=5)then putimage((i-1)*10,j*10+40,vrp[2]^,1);
        if(masiv.a[i-1][j]=5)then putimage((i-1)*10,j*10+40,rasgrom[1]^,1);
        if(masiv.a[i-1][j]=0)then putimage((i-1)*10,j*10+40,vrp[2]^,1);
        if(masiv.a[i+1][j]=5)then putimage((i+1)*10,j*10+40,kar[5]^,1);
        if(masiv.a[i+1][j]=5)then putimage((i+1)*10,j*10+40,vrp[2]^,1);
        if(masiv.a[i+1][j]=5)then putimage((i+1)*10,j*10+40,rasgrom[1]^,1);
        if(masiv.a[i+1][j]=0)then putimage((i+1)*10,j*10+40,vrp[2]^,1);
        if(masiv.a[i][j-1]=5)then putimage(i*10,(j-1)*10+40,kar[5]^,1);
        if(masiv.a[i][j-1]=5)then putimage(i*10,(j-1)*10+40,vrp[2]^,1);
        if(masiv.a[i][j-1]=5)then putimage(i*10,(j-1)*10+40,rasgrom[1]^,1);
        if(masiv.a[i][j-1]=0)then putimage(i*10,(j-1)*10+40,vrp[2]^,1);
        if(masiv.a[i][j+1]=5)then putimage(i*10,(j+1)*10+40,kar[5]^,1);
        if(masiv.a[i][j+1]=5)then putimage(i*10,(j+1)*10+40,vrp[2]^,1);
        if(masiv.a[i][j+1]=5)then putimage(i*10,(j+1)*10+40,rasgrom[1]^,1);
        if(masiv.a[i][j+1]=0)then putimage(i*10,(j+1)*10+40,vrp[2]^,1);
        i2:=round((zel.x+2)/10);
        j2:=round((zel.y-40+6)/10);
        if(i2=i)and(j2=j)or(i2=i-1)and(j2=j)or
          (i2=i+1)and(j2=j)or(i2=i)and(j2=j-1)or
          (i2=i)and(j2=j+1)then zel.zisn:=zel.zisn-20;
          j2:=round((zel.y-40+16)/10);
        if(i2=i)and(j2=j)or(i2=i-1)and(j2=j)or
          (i2=i+1)and(j2=j)or(i2=i)and(j2=j-1)or
          (i2=i)and(j2=j+1)then zel.zisn:=zel.zisn-20;
        b[kk].vrema:=-10;
      end;
    end;
    end;
    if(zel.stor=0)then
    begin
      skor_vr:=skor_vr-1;
      if(skor_vr<0)then skor_vr:=0;
    end;
    prisok;
    if(uhvat=-1)then
    begin
      pered:=0;
      i:=round((zel.x-5)/10);
      for zikl:=0 to 15 do
        begin
          j:=round((zel.y-40+skor_zel+zikl)/10);
          if(masiv.a[i][j]=7)then pered:=1;
        end;
      if(pered=1)and(skor_pad<40)then uhvat:=1;
      if(uhvat=1)then skor_zel:=1;
      if(uhvat=1)then visot:=0;
      if(uhvat=1)then skor_pad:=0;
      if(pered=1)and(skor_pad<40)then zel.stor:=10;
      pered:=0;
      j:=round((zel.y-40)/10);
      i:=round((zel.x-5)/10);
      if(masiv.a[i][j]=8)then pered:=1;
      if(pered=1)and(skor_pad<30)then uhvat:=2;
      if(uhvat=2)then zel.y:=j*10+43;
      if(uhvat=2)then skor_zel:=1;
      if(uhvat=2)then visot:=0;
      if(uhvat=2)then skor_pad:=0;
      if(pered=1)and(skor_pad<30)then zel.stor:=10;
    end;
    pered:=0;
    if(vremazz*2>maxBegCten)then zel.combo[2]:=0;
    if((zel.stor=9)or(zel.stor=8)or(zel.stor=7)or(zel.stor=5)or(zel.stor=6)or(zel.stor=4)or(uhvat=1)or(uhvat=2)
    or(zel.combo[1]=3)or(zel.combo[1]=4))or(zel.combo[2]=1)then pered:=1;
    if(pered=0)then
    begin
      dop;
      dop;
    end;
    for kk:=0 to 2 do
    begin
      i:=round((zel.x-2)/10);
      if(leftright=1)then i:=round((zel.x-9)/10);
      if(leftright=2)then i:=round((zel.x+3)/10);
      if(kk=0)then j:=round((zel.y-40+14)/10);
      if(kk=1)then j:=round((zel.y-40+3)/10);
      if(masiv.a[i][j]>=19)and(masiv.a[i][j]<=23)then
      begin
        if(getpixel(i*10+3,j*10+40+3)=12)then
        begin
          if(klu[masiv.a[i][j]-18]=true)then
          begin
            str(masiv.a[i][j]-18,s2);
            kar[masiv.a[i][j]]:=loader('data/image/dvz'+s);
            putimage(i*10,j*10+40,kar[masiv.a[i][j]]^,1);
            kar[masiv.a[i][j]]:=loader('data/image/dvo'+s);
            putimage(i*10,j*10+40,kar[masiv.a[i][j]]^,1);
            masiv.a[i][j+1]:=999;
            masiv.a[i][j]:=999;
          end;
        end;
      end;
      if(masiv.a[i][j]>=14)and(masiv.a[i][j]<=18)then
        begin
          klu[masiv.a[i][j]-13]:=true;
          putimage(i*10,j*10+40,kar[masiv.a[i][j]]^,1);
          putimage(30+(masiv.a[i][j]-13)*10,27,kar[masiv.a[i][j]]^,0);
          masiv.a[i][j]:=0;
        end;
      if(masiv.a[i][j]=10)then
        begin
          kol_klu:=kol_klu-1;
          opit:=opit+25;
          masiv.a[i][j]:=0;
          putimage(i*10,j*10+40,kar[10]^,1);
        end;
      if(masiv.a[i][j]=12)and(zel.zisn<100)then
        begin
          zel.zisn:=zel.zisn+20;
          if(zel.zisn>100)then zel.zisn:=100;
          masiv.a[i][j]:=0;
          putimage(i*10,j*10+40,kar[12]^,1);
        end;
        if(masiv.a[i][j]=11)and(b[1].kol<60)then
        begin
          b[1].kol:=b[1].kol+3;
          masiv.a[i][j]:=0;
          putimage(i*10,j*10+40,kar[11]^,1);
        end;
        if(masiv.a[i][j]=13)and(b[2].kol<60)then
        begin
          b[2].kol:=b[2].kol+10;
          masiv.a[i][j]:=0;
          putimage(i*10,j*10+40,kar[13]^,1);
        end;
        if(masiv.a[i][j]=24)and(b[3].kol<60)then
        begin
          b[3].kol:=b[3].kol+1;
          masiv.a[i][j]:=0;
          putimage(i*10,j*10+40,kar[24]^,1);
        end;
    end;
    heat(2);
    orusiee(2,Dstoit);
    vrema:=vrema+1;
    if(vrema>maxBegCten)and(zel.combo[1]=3)then
    begin
      zel.combo[1]:=0;
      if(leftright=1)then zel.x:=zel.x+3;
      if(leftright=2)then zel.x:=zel.x-3;
    end;
    if(vrema>maxxxvvv)then zel.stor:=0;
    if(vrema>maxxxvvv)and(uhvat=-1)then uhvat:=0;
    if(zel.combo[1]<>3)then
    for haa:=1 to 10 do
      if(vrema>maxxxvvv)and(zel.combo[haa]<>0)then zel.combo[haa]:=0;
    anim_zel;
    if medlenie=true then
    begin
      delay(nastroil.eee*5);
      vrema_medl:=vrema_medl-1;
      vreman_zikl(2);
    end;
    delay(0);
    vremazz:=vremazz+1;
    if(vrema_medl<=0)then medlenie:=false;
    if(medlenie=false) then vrema_medl:=vrema_medl+1;
    if(medlenie=false) then  vreman_zikl(1);
    if vrema_medl>max_medl then vrema_medl:=max_medl;
    if pered=1 then delay(round(nastroil.eee+nastroil.eee/3));
    if skor_pad>3 then delay(abs((nastroil.eee)-skor_pad));
    gettime(zas,min,sek,dopol);
    if ch='p' then
    begin
      setcolor(10); settextstyle(0,0,1);
      outtextxy(400,10,'pausa');
      readkey;
      setcolor(0); settextstyle(0,0,1);
      outtextxy(400,10,'pausa');
      settime(zas,min,sek,dopol);
    end;
    rec.szet:=min;
    rec.szet:=rec.szet+sek/100;
    str(rec.szet:6:2,s);
    setfillstyle(1,0);
    bar(449,9,640,20);
    outtextxy(500,10,s);
    str(opit,s);
    if(opit>=sqr(urovenopita)*100)then
    begin
      opit:=opit-sqr(urovenopita)*100;
      urovenopita:=urovenopita+1;
      ozki:=ozki+3;
    end;
    outtextxy(450,10,s);
until((exito=1)or(ch=esc)or(zel.zisn<=0))or(min>=59);
  if(min<59)and(ch<>esc)and(zel.zisn>0)then
  begin
    for i:=1 to 3 do b[i].nkol:=b[i].kol;
    sav.opit:=opit;
    sav.urovenopita:=urovenopita;
    sav.ozki:=ozki;
    sav.istoz:=istoz;
    rec.szet:=min;
    rec.szet:=rec.szet+sek/100+(100-zel.zisn/3);
    rec.name:=zel.name;
    str(uroven,s);
    dobavlenie('data/recordi/ur'+s,rec.name,rec.szet);
  end;
end;
end.
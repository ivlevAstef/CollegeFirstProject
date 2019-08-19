unit loaderi;
interface
uses crt,graph,vari,dos;
procedure ResetMouse;
procedure ShowMouseCursor(SH:Boolean);
procedure GetMousePosition;
procedure SetMousePosition(xxpos,yypos:integer);
procedure save_nast;
procedure load_nast;
procedure sagruska_karti(i:integer);
function loader(na:string):pointer;
procedure load_save_igri;
function perevod(n:shortint;s2:string):string;
procedure vibor_load(save_load:integer);
procedure Save_save_igri(ghj:integer);
procedure obnow;
procedure load_1_save(viborr:integer);
procedure dani_kart_kol_load;
implementation
procedure ResetMouse;
begin
  asm
  mov ax,0
  int 33h
  end;
end;
procedure ShowMouseCursor(SH:Boolean);
var s:word;
begin
  s:=2;
  if SH then s:=1;
  asm
  mov ax,s
  int 33h
  end;
end;
procedure GetMousePosition;
begin
  asm
  mov ax,3
  int 33h
  mov m.k,bx
  mov m.x,cx
  mov m.y,dx
  end;
end;
procedure SetMousePosition(xxpos,yypos:integer);
begin
  asm
  mov ax,4
  mov cx,xxpos
  mov dx,yypos
  int 33h
  end;
end;
procedure save_nast;
var f:file of nastroiki;
begin
  Assign(f,'data\nastroiki.nas');
  rewrite(F);
  write(f,nastroil);
  close(f);
end;
procedure load_nast;
var f:file of nastroiki;
begin
  Assign(f,'data\nastroiki.nas');
  reset(f);
  read(f,nastroil);
  close(f);
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
function loader(na:string):pointer;
var
   f:file;
   s:longint;
   p:pointer;
begin
  assign(f,na);
  {$I-}reset(f);{$I+}
  if(Ioresult<>0)then
  begin
    pered:=pered+1;
    vibori:=1;
    writeln(pered,' ERROR:file not: ',na);
  end
  else
  begin
    reset(f,1);
    s:=filesize(f);
    getmem(p,s);
    blockread(f,p^,s);
    loader:=p;
    close(f);
  end;
end;
procedure load_save_igri;
var f:file of imena;
sss:string;
begin
  cleardevice;
  Assign(f,'data\imena.ima');
  reset(f);
  read(f,imenaa);
  close(f);
  settextstyle(0,0,1);
  setcolor(10);
  for i:=1 to 46 do
  begin
    Str(i,sss);
    outtextxy(0,10+i*10,sss);
    outtextxy(20,10+i*10,imenaa.s[i]);
  end;
end;
function perevod(n:shortint;s2:string):string;
begin
 for i:=1 to n do
 begin
   if(s2[i]='a')then s2[i]:='A';
   if(s2[i]='b')then s2[i]:='B';
   if(s2[i]='c')then s2[i]:='C';
   if(s2[i]='d')then s2[i]:='D';
   if(s2[i]='e')then s2[i]:='E';
   if(s2[i]='f')then s2[i]:='F';
   if(s2[i]='g')then s2[i]:='G';
   if(s2[i]='h')then s2[i]:='H';
   if(s2[i]='i')then s2[i]:='I';
   if(s2[i]='j')then s2[i]:='J';
   if(s2[i]='l')then s2[i]:='L';
   if(s2[i]='m')then s2[i]:='M';
   if(s2[i]='n')then s2[i]:='N';
   if(s2[i]='o')then s2[i]:='O';
   if(s2[i]='p')then s2[i]:='P';
   if(s2[i]='q')then s2[i]:='Q';
   if(s2[i]='r')then s2[i]:='R';
   if(s2[i]='s')then s2[i]:='S';
   if(s2[i]='t')then s2[i]:='T';
   if(s2[i]='u')then s2[i]:='U';
   if(s2[i]='v')then s2[i]:='V';
   if(s2[i]='w')then s2[i]:='W';
   if(s2[i]='x')then s2[i]:='X';
   if(s2[i]='y')then s2[i]:='Y';
   if(s2[i]='z')then s2[i]:='Z';
   if(s2[i]='k')then s2[i]:='K';
 end;
 perevod:=s2;
end;
procedure vibor_load(save_load:integer);
var vibor2,exito:integer;
f2:file;
sss:string;
begin
  exito:=2;
  vibor2:=1;
  repeat
      ch:='[';
      if keypressed then ch:=readkey;
      if ch=#0 then ch:=readkey;
      settextstyle(0,0,1);
      setcolor(10);
      str(vibor2,sss);
      if((ch=up)or(ch=down))then outtextxy(0,10+vibor2*10,sss);
      if(ch=up)then vibor2:=vibor2-1;
      if(ch=down)then vibor2:=vibor2+1;
      if(vibor2<1)then vibor2:=1;
      if(vibor2>46)then vibor2:=46;
      str(vibor2,sss);
      setcolor(12);
      if((ch=up)or(ch=down))then outtextxy(0,10+vibor2*10,sss);
      delay(nastroil.eee);
      dfg:=0;
      if(ch=enter)then
      begin
        if(save_load=2)then
        begin
          dfg:=1;
          if(imenaa.s[vibor2]='pusto')then dfg:=0;
          if(dfg=1)then outtextxy(400,200,'LOAD');
          if(dfg=1)then exito:=1;
          if(dfg=1)then vibori:=vibor2;
          if(dfg=0)then outtextxy(400,200,'PUSTO');
          outtextxy(400,450,'NASMI KNOPKU');
          readln;
          ch:=']';
          setfillstyle(1,0);
          bar(200,0,640,480);
        end;
        if(save_load=1)then
        begin
          if(imenaa.s[vibor2]='pusto')then outtextxy(400,200,'SAVE');
          if(imenaa.s[vibor2]='pusto')then dfg:=1;
          if(dfg=0)then
          begin
            repeat
              ch:='[';
              if keypressed then ch:=readkey;
              if ch=#0 then ch:=readkey;
              settextstyle(0,0,1);
              setcolor(10);
              outtextxy(400,100,'RESET SAVE');
              if(dfg=1)then outtextxy(550,130,'OFF');
              if(dfg=0)then outtextxy(500,130,'YES');
              if(ch=left)then dfg:=1;
              if(ch=right)then dfg:=0;
              setcolor(12);
              if(dfg=0)then outtextxy(550,130,'OFF');
              if(dfg=1)then outtextxy(500,130,'YES');
            until ch=enter;
            if(dfg=1)then
            begin
              FindFirst('data/save/*.sav',$01,DirInfo);
              while doserror=0 do
              begin
                if(dirinfo.name=perevod(20,imenaa.s[vibor2]+'.sav'))then
                begin
                  Assign(F2,'data/save/'+dirinfo.name);
                  erase(F2);
                end;
              FindNext(DirInfo);
              end;
              FindFirst('data/save/*.saf',$01,DirInfo);
              while doserror=0 do
              begin
                if(dirinfo.name=perevod(20,imenaa.s[vibor2]+'.saf'))then
                begin
                  Assign(F2,'data/save/'+dirinfo.name);
                  erase(F2);
                end;
              FindNext(DirInfo);
              end;
              outtextxy(400,400,'SAVE');
            end;
            if(dfg=0)then outtextxy(400,400,'OTMENA');
          end;
        if(dfg=1)then vibori:=vibor2;
        if(dfg=1)then exito:=1;
        outtextxy(400,450,'NASMI KNOPKU');
        readln;
        ch:=']';
        setfillstyle(1,0);
        bar(200,0,640,480);
        delay(nastroil.eee);
        end;
      end;
      if(ch=esc)then dfg:=0;
      if(ch=esc)then exito:=1;
  until exito=1;
  slot:=vibori;
  if (dfg=1)then
  begin
    sav.maxBegCten:=20;
    sav.skor_zel:=1;
    sav.max_visot:=20;
    sav.visot_pris:=8;
    sav.max_medl:=100;
    sav.opit:=0;
    sav.urovenopita:=1;
    sav.istoz:=0;
    sav.ozki:=0;
  end;
end;
procedure Save_save_igri(ghj:integer);
var f:file of imena;
f2:file of save;
f3:file of orusie;
sss:string;
begin
  load_save_igri;
  if(ghj=1)then vibor_load(1);
  if(dfg=1)then
  begin
    imenaa.s[vibori]:=zel.name;
    slot:=vibori;
    Assign(f,'data\imena.ima');
    rewrite(F);
    write(f,imenaa);
    close(f);
    assign(f3,'data/save/'+zel.name+'.saf');
    rewrite(f3);
    for ikl:=1 to 5 do
      write(f3,b[ikl]);
    close(f3);
    Assign(f2,'data/save/'+zel.name+'.sav');
    rewrite(F2);
    write(f2,sav);
    close(f2);
  end;
end;
procedure obnow;
var f:file of imena;
f2:file of save;
f3:file of orusie;
sss:string;
yyy:integer;
begin
  Assign(f,'data\imena.ima');
  reset(f);
  read(f,imenaa);
  close(f);
  for i:=1 to 46 do
    imenaa.s[i]:='pusto';
  FindFirst('data/save/*.saf',$01,DirInfo);
  while doserror=0 do
  begin
    if(dirinfo.name<>'.')and(dirinfo.name<>'..')and(dirinfo.name<>'')then
    begin
      Assign(F2,'data/save/'+dirinfo.name);
      erase(F2);
    end;
    FindNext(DirInfo);
  end;
  FindFirst('data/save/*.sav',$01,DirInfo);
  while doserror=0 do
  begin
    if(dirinfo.name<>'.')and(dirinfo.name<>'..')and(dirinfo.name<>'')then
    begin
      Assign(F2,'data/save/'+dirinfo.name);
      erase(F2);
    end;
    FindNext(DirInfo);
  end;
  Assign(f,'data\imena.ima');
  rewrite(f);
  write(f,imenaa);
  close(f);
end;
procedure load_1_save(viborr:integer);
var f2:file of save;
f3:file of orusie;
sss:string;
begin
  sss:=('data/save/'+imenaa.s[viborr]+'.sav');
  Assign(f2,sss);
  reset(f2);
  read(f2,sav);
  sss:=('data/save/'+imenaa.s[viborr]+'.saf');
  Assign(f3,sss);
  reset(f3);
  for ikl:=1 to 5 do
    read(f3,b[ikl]);
  zel.name:=imenaa.s[viborr];
  close(f2);
  close(f3);
end;
procedure dani_kart_kol_load;
var f:file of vsego;
begin
  Assign(f,'data\cards\kolizestvo.dan');
  reset(f);
  read(f,vss);
  close(f);
end;
end.
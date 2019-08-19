unit drugoe;
interface
uses crt,graph,vari,loaderi,sastavko,opmen;
procedure init;
procedure sokr(nasvan:string);
procedure proverka;
implementation
procedure init;
begin
  proverka;
  load_nast;
  zel.p[0]:=loader('data/image/zel0');
  zel.p[1]:=loader('data/image/zel1');
  zel.p[2]:=loader('data/image/zel2');
  zel.p[3]:=loader('data/image/zel3');
  zel.p[4]:=loader('data/image/zel4');
  zel.p[5]:=loader('data/image/zel5');
  zel.p[6]:=loader('data/image/zel6');
  zel.p[7]:=loader('data/image/pr1');
  zel.p[8]:=loader('data/image/pr2');
  zel.p[9]:=loader('data/image/pr3');
  zel.p[10]:=loader('data/image/pr4');
  zel.p[11]:=loader('data/image/cida');
  zel.p[12]:=loader('data/image/verzel1');
  zel.p[13]:=loader('data/image/verzel4');
  zel.p[14]:=loader('data/image/zelv0');
  zel.p[15]:=loader('data/image/zelv1');
  zel.p[16]:=loader('data/image/zelv4');
  zel.p[17]:=loader('data/image/zelv2');
  zel.p[18]:=loader('data/image/zelv5');
  zel.p[19]:=loader('data/image/zelv3');
  zel.p[20]:=loader('data/image/zelv6');
  b[1].p:=loader('data/image/dinamit');
  b[2].p:=loader('data/image/raketa');
  b[3].p:=loader('data/image/usi');
  vrp[1]:=loader('data/image/vr1');
  vrp[2]:=loader('data/image/vsriv');
  vrp[3]:=loader('data/image/vr2');
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
  menup[1]:=loader('data/image/heat');
  menup[2]:=loader('data/image/koloru');
  menup[3]:=loader('data/image/vrema');
  menup[4]:=loader('data/image/oru1');
  rasgrom[1]:=loader('data/image/bum1');
  rasgrom[2]:=loader('data/image/bum2');
  down:=#80;
  enter:=#13;
  prised:=#120;
  zamedlenie:=#9;
  up:=#72;
  left:=#75;
  right:=#77;
  dinamit:=#122;
  esc:=#27;
  probel:=#32;
  if(vibori=1)then readln;
  if(vibori=0)then
  begin
    gd:=detect;
    initgraph(gd,gm,'');
    GetPalette(Pal);
    nastroil.eee:=600;
    sastavka;
    zel.zisn:=100;
    nastroil.gromkost:=0;
  {nastroil.versia:=1.0;}
    {obnow;}
    maxBegCten:=20;{norm-30}
    skor_zel:=1;{medleno(tiho)=0; credne(norm)=1; max(beg)=2;}
    max_visot:=20;{norm-25}
    visot_pris:=8;{normal 8}
    max_medl:=100;
    menu(cilakompa);
  end;
end;
procedure sokr(nasvan:string);
begin
  Assign(f,nasvan);
  {$I-}reset(f);{$I+}
  if(Ioresult<>0)then
  begin
    pered:=pered+1;
    vibori:=1;
    writeln(pered,' ERROR:file not: ',nasvan);
  end;
end;
procedure proverka;
var ssss:string;
begin
  clrscr;
  vibori:=0;
  pered:=0;
  sokr('data/imena.ima');
  sokr('data/nastroik.nas');
  sokr('data/cards/kolizest.dan');
  if(vibori=0)then
  begin
    dani_kart_kol_load;
    for dfg:=1 to vss.vs do
    begin
      str(dfg,ssss);
      sokr('data/cards/'+ssss+'.kar');
    end;
  end;
end;
end.
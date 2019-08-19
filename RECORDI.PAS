unit recordi;
interface
uses crt,graph,vari;
procedure sosdanie(name:string);
procedure uporadozivanie(name:string);
procedure dobavlenie(name,ima:string;szett:real);
procedure vivod(name:string;cv,yn:integer);
implementation
procedure sosdanie(name:string);
var rec:trecordi;
i:integer;
f:file of trecordi;
begin
  assign(f,name+'.rec');
  rewrite(f);
  for i:=1 to n do
  begin
    writeln('wwedite name',i,' igroka');
    readln(rec.name);
    writeln('wwedite szet',i,' igroka');
    readln(rec.szet);
    write(f,rec);
  end;
    close(f);
end;
procedure uporadozivanie(name:string);
var rec:array[1..n]of trecordi;
j,i:integer;
maxname:string;
nmax:integer;
max:real;
f:file of trecordi;
begin
  assign(f,name+'.rec');
  reset(f);
  for i:=1 to n do
    read(f,rec[i]);
  close(f);
  for i:=1 to n do
   begin
   max:=rec[i].szet;
   nmax:=i;
   maxname:=rec[i].name;
   for j:=i to n do
     if(rec[j].szet<max)then
     begin
       max:=rec[j].szet;
       nmax:=j;
       maxname:=rec[j].name;
     end;
   rec[nmax].szet:=rec[i].szet;
   rec[i].szet:=max;
   rec[nmax].name:=rec[i].name;
   rec[i].name:=maxname;
   end;
  assign(f,name+'.rec');
  rewrite(f);
  for i:=1 to n do
    write(f,rec[i]);
  close(f);
end;
procedure dobavlenie(name,ima:string;szett:real);
var rec:array[1..n]of trecordi;
j,i:integer;
nmin,min:integer;
f:file of trecordi;
begin
  uporadozivanie(name);
  assign(f,name+'.rec');
  reset(f);
  for i:=1 to n do
    read(f,rec[i]);
  close(f);
  if(szett<=rec[n].szet)then
  begin
    rec[n].szet:=szett;
    rec[n].name:=ima;
  end;
  assign(f,name+'.rec');
  rewrite(f);
  for i:=1 to n do
    write(f,rec[i]);
  close(f);
  uporadozivanie(name);
end;
procedure vivod(name:string;cv,yn:integer);
var
rec:trecordi;
i,y:integer;
s:string;
f:file of trecordi;
begin
  uporadozivanie(name);
  assign(f,name+'.rec');
  reset(f);
  y:=yn;
  settextstyle(0,0,1);
  setcolor(cv);
  for i:=1 to n do
  begin
    read(f,rec);
    outtextxy(40,y,rec.name);
    str(i,s);
    outtextxy(10,y,s);
    str(rec.szet:6:2,s);
    outtextxy(400,y,s);
    y:=y+10;
  end;
    close(f);
end;
end.
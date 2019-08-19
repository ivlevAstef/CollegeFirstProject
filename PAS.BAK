uses crt;
var a:array[1..8]of integer;
l,i:integer;
procedure sifr(l,r:integer);
var i,j,x:integer;
begin
  i:=l; j:=2*i; x:=a[i];
  while(j<=r)do
  begin
    if(j<r)then
      if(a[j]>a[j+1])then j:=j+1;
      if(x<=a[j])then
      begin
        a[i]:=x; exit
      end;
      a[i]:=a[j];i:=j;j:=2*i;
  end;
  a[i]:=x;
end;
begin
  clrscr;
  randomize;
  {for i:=1 to 10 do
  a[i]:=random(30);}
  a[1]:=2;a[2]:=38;a[3]:=8;a[4]:=51;a[5]:=90;a[6]:=14;a[7]:=40;a[8]:=63;
  for i:=1 to 8 do
  write('  ',a[i]);
  writeln;
  l:=(8 div 2)+1;
  while(l>1)do
  begin
    l:=l-1;
    sifr(l,8);
  end;
  for i:=1 to 8 do
  write('  ',a[i]);
  readln;
end.
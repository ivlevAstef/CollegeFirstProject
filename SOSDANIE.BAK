uses crt,graph,vari;
procedure sosdanie(name:string);
var rec:trecordi;
i:integer;
f:file of trecordi;
begin
  assign(f,name+'.rec');
  rewrite(f);
  for i:=1 to n do
  begin
    rec.name:='record';
    rec.szet:=50;
    write(f,rec);
  end;
    close(f);
end;
begin
sosdanie('data/recordi/ur1');
sosdanie('data/recordi/ur2');
sosdanie('data/recordi/ur3');
sosdanie('data/recordi/ur4');
sosdanie('data/recordi/ur5');
end.
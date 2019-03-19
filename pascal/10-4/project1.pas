program project1;
var a: array [1..4] of longint;
    b:string;
    i:integer;
    f:text;
begin
  assign(f, 'input.txt');
  reset(f);
  for i:=1 to 4 do
      read(f, a[i]);
  close(f);
  assign(f, 'output.txt');
  rewrite(f);
  for i:=1 to 4 do
      if a[i] mod 42 = 0
         then
             begin
                  b:='';
                  str(a[i] div 42,b);
                  b:=b[1]+b[3]+b[5]+b[7];
                  write(f,b,' ');
             end
          else
             write(f,'???? ');
  close(f);
end.


program project1;
var n:longint;
    rez:string;
    f: text;
begin
  assign(f, 'input.txt');
  reset(f);
  read(f,n);
  close(f);
  if n mod 7 = 0
     then
         begin
              n:=n div 7 - 27;
              if n mod 3 = 0
                 then
                     str(n mod 3, rez)
                 else
                     rez:='Error' ;
         end
     else
         rez:='Error';
  assign(f, 'output.txt');
  rewrite(f);
  writeln(f, rez);
  close(f);
end.


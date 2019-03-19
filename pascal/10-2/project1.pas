program project1;
var n,m:longint;
    f: text;
begin
  assign(f, 'input.txt');
  reset(f);
  read(f, n, m);
  close(f);
  assign(f, 'output.txt');
  rewrite(f);
  while n > m do
        begin
          if (n mod 2 = 0) and (n >= 2 * m)
             then
                 begin
                   writeln(f, ':2');
                   n := n div 2;
                 end
             else
                 begin
                   writeln(f, '-1');
                   n:=n-1;
                 end;
        end;
  close(f);
end.

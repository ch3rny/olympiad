program project1;
var n:real;
    f: text;
begin
  assign(f, 'input.txt');
  reset(f);
  read(f,n);
  close(f);
  n:=(n/7-27)/3;
  assign(f, 'output.txt');
  rewrite(f);
  if frac(n)=0
     then
         write(f, round(n))
     else
         write(f, 'Error');
  close(f);
end.



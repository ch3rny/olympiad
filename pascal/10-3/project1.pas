program project1;
 var i,j,k,l,n,m,summa:integer;
     a: array of integer;
    f: text;
begin
  assign(f, 'input.txt');
  reset(f);
  read(f, n, m);
  close(f);
  SetLength(a, m);
  i:=1;
  summa:=0;
  for j:=1 to 47 do
      for k:=0 to 9 do
          for l:=1 to j do
              begin
                   if i>=m+1 then break;
                   a[i]:=k;
                   i:=i+1;
              end;
  for i:=n to m do
      summa:=summa+a[i];
  assign(f, 'output.txt');
  rewrite(f);
  writeln(f,summa);
  close(f);
end.



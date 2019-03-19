f = open('input.txt')
n = float(f.read())
f.close()
f = open('output.txt', 'w')
n = (n / 7 - 27) / 3
if n == int(n):
    f.write(str(int(n)))
else:
    f.write('Error')
f.close()

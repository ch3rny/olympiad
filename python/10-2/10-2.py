f = open('input.txt')
n, m = f.read().split()
n = int(n)
m = int(m)
f.close()
f = open('output.txt', 'w')
while n > m:
    if n % 2 == 0 and n >= 2*m:
        f.write(':2\n')
        n /= 2
    else:
        f.write('-1\n')
        n -= 1
f.close()


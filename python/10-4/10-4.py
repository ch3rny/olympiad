f = open('input.txt')
a = f.read().split()
f.close()
f = open('output.txt', 'w')
for i in range(0, 4):
    if int(a[i]) % 42 == 0:
        b = str(int(a[i]) // 42)
        b = b[0]+b[2]+b[4]+b[6]
        f.write(b+' ')
    else:
        f.write('???? ')
f.close()


with open('input', 'r') as file:
    s = 0
    q = 0
    l = []
    for line in file:
        # *
        # str1, str2 = line[:len(line) // 2], line[len(line) // 2:len(line) - 1]
        # k = next(iter(set(str1).intersection(set(str2))))
        # v = ord(k) - 38 if k.isupper() else ord(k) - 96

        # **
        q += 1
        l.append(line.strip())
        if q % 3 == 0:
            k = next(iter(set(l[0]).intersection(
                set(l[1]).intersection(set(l[2])))))
            v = ord(k) - 38 if k.isupper() else ord(k) - 96
            print(k)
            s += v
            l = []
    print(s)

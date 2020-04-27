

command = input("Enter command ")

res = ''

for i in command:
    print(hex(ord(i))[2:]+" ",end='')
    res += hex(ord(i))[2:]

print()
print(res)


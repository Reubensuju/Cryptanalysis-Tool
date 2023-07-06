Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
n = int(input("Enter the size of the Hill key: "))
key = input("Enter the Hill key: ")
keyMatrix = [[0 for x in range(n)] for y in range(n)]

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()

k = 0
for i in range(n):
    for j in range(n):
        keyMatrix[i][j] = ord(key[k].lower()) - 97
        k+=1

if(len(Plaintext)%n !=0):
    x = n - (len(Plaintext)%n)
    for i in range(x):
        Plaintext = Plaintext + 'z'

i = 0
while(i < len(Plaintext)):
    for j in range(n):
        value = 0
        for k in range(n):
            value = value + (keyMatrix[j][k] * (ord(Plaintext[i+k].lower()) - 97))
        value = value %26
        Ciphertext = Ciphertext + chr(value + 65)
    i = i+n

print('Encrypted Cyphertext: ', Ciphertext)
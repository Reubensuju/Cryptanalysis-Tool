from sympy import Matrix

Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
n = int(input("Enter the size of the Hill key: "))
key = input("Enter the Hill key: ")
keyMatrix = [[0 for x in range(n)] for y in range(n)]

Ciphertext = Ciphertext.replace(" ", "")
Ciphertext = Ciphertext.lower()

k = 0
for i in range(n):
    for j in range(n):
        keyMatrix[i][j] = ord(key[k].lower()) - 97
        k+=1

keyMatrixInv = Matrix(keyMatrix).inv_mod(26)
keyMatrixInv = keyMatrixInv.tolist()

i = 0
while(i < len(Ciphertext)):
    for j in range(n):
        value = 0
        for k in range(n):
            value = value + (keyMatrixInv[j][k] * (ord(Ciphertext[i+k].lower()) - 97))
        value = value %26
        Plaintext = Plaintext + chr(value + 65)
    i = i+n

print('Decrypted Plaintext: ', Plaintext)
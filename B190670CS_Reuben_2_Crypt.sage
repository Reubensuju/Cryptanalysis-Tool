from sympy import Matrix
import math

Plaintext = input("Enter the Plaintext: ")
Ciphertext = input("Enter the Ciphertext: ")
key = ""

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()
Ciphertext = Ciphertext.lower()

root = int(math.sqrt(len(Ciphertext)))

PlainMatrix = [[0 for x in range(root)] for y in range(root)]
CipherMatrix = [[0 for x in range(root)] for y in range(root)]

k = 0
for i in range(root):
    for j in range(root):
        PlainMatrix[i][j] = ord(Plaintext[k].lower()) - 97
        k+=1

k = 0
for i in range(root):
    for j in range(root):
        CipherMatrix[i][j] = ord(Ciphertext[k].lower()) - 97
        k+=1

PlainMatrixInv = Matrix(PlainMatrix).inv_mod(26)
PlainMatrixInv = PlainMatrixInv.tolist()

for i in range(root):
    for j in range(root):
        value = 0
        for k in range(root):
            value = value + (PlainMatrixInv[i][k] * CipherMatrix[k][j])
        value = value %26
        key = key + chr(value + 65)

print('Cipher key:', key)
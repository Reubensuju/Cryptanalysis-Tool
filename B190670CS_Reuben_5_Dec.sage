Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
key = input("Enter the Transposition key: ")

CMatrix = []
row_len = int(len(Ciphertext) / len(key))

i = 0
while(i < len(Ciphertext)):
    Arr = []
    for j in range(row_len):
        Arr.append(Ciphertext[i+j])
    CMatrix.append(Arr)
    i =i+row_len

keyList = sorted(list(key))

for i in range(row_len):
    for j in range(len(key)):
        keyIndex = keyList.index(key[j])
        Plaintext = Plaintext + CMatrix[keyIndex][i].upper()

print('Decrypted Plaintext: ', Plaintext)
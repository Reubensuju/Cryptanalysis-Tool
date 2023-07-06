Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
key = input("Enter the Transposition key: ")
n = len(key)

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()

if(len(Plaintext)%n !=0):
    x = n - (len(Plaintext)%n)
    for i in range(x):
        Plaintext = Plaintext + 'z'

PMatrix = []

i = 0
while(i < len(Plaintext)):
    Arr = []
    for j in range(len(key)):
        Arr.append(Plaintext[i+j])
    PMatrix.append(Arr)
    i =i+n

keyList = sorted(list(key))

for i in range(len(key)):
    keyIndex = key.index(keyList[i])
    for j in range(len(PMatrix)):
        Ciphertext = Ciphertext + PMatrix[j][keyIndex].upper()

print('Encrypted Cyphertext: ', Ciphertext)
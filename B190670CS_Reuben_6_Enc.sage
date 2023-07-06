Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
key = input("Enter the Vigenere key: ")
keyStream = ""

Plaintext = Plaintext.replace(" ", "")

for i in range(len(Plaintext)):
    keyStream = keyStream + key[i % len(key)]

for i in range(len(Plaintext)):
    if(Plaintext[i].isalpha()):
        value = (ord(Plaintext[i].lower()) + ord(keyStream[i].lower()) - 2*97) % 26
        Ciphertext = Ciphertext + chr(value + 65)

print('Encrypted Cyphertext: ', Ciphertext)
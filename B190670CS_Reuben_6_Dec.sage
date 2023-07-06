Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
key = input("Enter the Vigenere key: ")
keyStream = ""

for i in range(len(Ciphertext)):
    keyStream = keyStream + key[i % len(key)]

for i in range(len(Ciphertext)):
    if(Ciphertext[i].isalpha()):
        value = (ord(Ciphertext[i].lower()) - ord(keyStream[i].lower()) +26) % 26
        Plaintext = Plaintext + chr(value + 65)

print('Decrypted Plaintext: ', Plaintext)
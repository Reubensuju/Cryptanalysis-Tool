Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
key = input("Enter the substitution key: ")


for letter in Ciphertext:
    value = key.find(letter.lower())
    Plaintext = Plaintext + chr(value + 65)

print('Decrypted Plaintext: ', Plaintext)
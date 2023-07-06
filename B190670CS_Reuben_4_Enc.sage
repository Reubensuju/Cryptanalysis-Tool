Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
key = input("Enter the substitution key: ")


for letter in Plaintext:
    if(letter.isalpha()):
        value = (ord(letter.lower()) - 97)
        Ciphertext = Ciphertext + key[value].upper()

print('Encrypted Cyphertext: ', Ciphertext)
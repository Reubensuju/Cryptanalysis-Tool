Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
a = input("Enter the value of key: ")

a = int(a)

for letter in Plaintext:
    if(letter.isalpha()):
        value = ((ord(letter.lower()) - 97) + a) % 26
        Ciphertext = Ciphertext + chr(value + 65)

print('Encrypted Cyphertext: ', Ciphertext)
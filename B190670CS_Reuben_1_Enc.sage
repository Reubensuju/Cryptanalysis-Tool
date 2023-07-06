Plaintext = input("Enter the plaintext to be Encrypted: ")
Ciphertext = ""
a = input("Enter the value of a: ")
b = input("Enter the value of b: ")

a = int(a)
b = int(b)

for letter in Plaintext:
    if(letter.isalpha()):
        value = (((ord(letter.lower()) - 97) * a) + b) % 26
        Ciphertext = Ciphertext + chr(value + 65)

print('Encrypted Cyphertext: ', Ciphertext)
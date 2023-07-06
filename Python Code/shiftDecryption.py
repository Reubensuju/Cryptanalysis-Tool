Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
a = input("Enter the value of key: ")

a = int(a)

for letter in Ciphertext:
    value = ((ord(letter.lower()) - 97) - a) % 26
    Plaintext = Plaintext + chr(value + 65)

print('Decrypted Plaintext: ', Plaintext)
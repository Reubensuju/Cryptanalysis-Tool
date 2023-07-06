Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""

a = list(range(26))

for i in a:
    Plaintext = ""
    for letter in Ciphertext:
        value = ((ord(letter.lower()) - 97) - i) % 26
        Plaintext = Plaintext + chr(value + 65)
    print('Decrypted Plaintext: ', Plaintext)
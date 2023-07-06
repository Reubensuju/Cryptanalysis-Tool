def mod_inv(a,m):
    for x in range(1,m):
        if((a%m)*(x%m) % m==1):
            return x

Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""

a = [1,3,5,7,9,11,15,17,19,21,23,25]
b = list(range(26))

for i in a:
    inv = mod_inv(i, 26)
    for j in b:
        Plaintext = ""
        for letter in Ciphertext:
            value = (((ord(letter.lower()) - 97) - j) * inv) % 26
            Plaintext = Plaintext + chr(value + 65)
        print('Decrypted Plaintext: ', Plaintext)
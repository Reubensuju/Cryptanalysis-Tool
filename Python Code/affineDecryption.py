def mod_inv(a,m):
    for x in range(1,m):
        if((a%m)*(x%m) % m==1):
            return x

Ciphertext = input("Enter the Ciphertext to be Decrypted: ")
Plaintext = ""
a = input("Enter the value of a: ")
b = input("Enter the value of b: ")

a = int(a)
b = int(b)
inv = mod_inv(a, 26)

for letter in Ciphertext:
    value = (((ord(letter.lower()) - 97) - b) * inv) % 26
    Plaintext = Plaintext + chr(value + 65)

print('Decrypted Plaintext: ', Plaintext)
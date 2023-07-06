Plaintext = input("Enter the Plaintext: ")
Ciphertext = input("Enter the Ciphertext: ")

key = ""

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()
Ciphertext = Ciphertext.lower()

for i in range(26):
    char = chr(i + 97)
    value = Plaintext.find(char)
    key = key + Ciphertext[value]

print('Cipher key:', key)
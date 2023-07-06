Plaintext = input("Enter the Plaintext: ")
Ciphertext = input("Enter the Ciphertext: ")

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()
Ciphertext = Ciphertext.lower()

key = ""

for i in range(len(Plaintext)):
    value = (ord(Ciphertext[i].lower()) - ord(Plaintext[i].lower())) % 26
    key = key + chr(value + 65)

flag = 0
for x in range(1, len(key)):
    substring = key[:x]
    if((substring * (len(key)//len(substring))+(substring[:len(key)%len(substring)]) == key) and (flag == 0)):
        print(substring)
        flag = 1

if(flag == 0):
    print('Cipher key:', key)
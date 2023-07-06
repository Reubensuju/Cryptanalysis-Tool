Plaintext = input("Enter the Plaintext: ")
Ciphertext = input("Enter the Ciphertext: ")

Plaintext = Plaintext.replace(" ", "")
Plaintext = Plaintext.lower()
Ciphertext = Ciphertext.lower()

key = ""
L =[]

i=0
while(i< len(Ciphertext)-1):
    dist = abs(Plaintext.find(Ciphertext[i]) - Plaintext.find(Ciphertext[i+1]))
    if(dist!=0 and len(Ciphertext) % dist == 0):
        L.append(dist)
    i+=1

key_len = max(L,key=L.count)

Top = []
i=0
while(i<len(Ciphertext)):
    Top.append(Ciphertext[i])
    i = i+ int(len(Ciphertext)/key_len)

for i in range(key_len):
    key = key + str(Top.index(Plaintext[i]) + 1)

print('Cipher key:', key)
README FILE for the execution of sage files in ASSIGNMENT 1

Name: REUBEN SUJU VARGHESE
Roll No. : B190670CS
Class: CSE-B

Cipher Algorithms

1) AFFINE CIPHER
	a. Encryption
		The encryption for Affine Cipher is done using standard logic
		The Plaintext is inputted from the user
		The two keys, 'a' and 'b' are inputted by the user
		Each letter in the Plaintext undergoes the transformation:
			C = (a*P + b) mod 26
		INPUT: Enter the Plaintext and the value of both keys
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Affine Cipher is done using standard logic
		The Ciphertext is inputted from the user
		The two keys, 'a' and 'b' are inputted by the user
		Each letter in the Ciphertext undergoes the transformation:
			P = ((C-b) * a^-1) mod 26
		INPUT: Enter the Ciphertext and the value of both keys
		The output will give the corresponding Plaintext

	c. Cryptanalysis (BRUTE FORCE APPROACH)
		The Cryptanalysis for Affine Cipher is done using brute force approach
		The goal is to figure out the two keys and its corresponding plaintext
		Key 'a' has 12 possible values, and 'b' has 26 possible values
		The program will print out all possible plaintexts for different combinations of 'a' and 'b'
		INPUT: Enter the Ciphertext
		The output will be all possible plaintexts


2) HILL CIPHER
	a. Encryption
		The encryption for Hill Cipher is done using standard logic
		The Plaintext is inputted from the user
		The key is inputted by the user in the form of a block of string. We will then have to convert this string into its corresponding keyMatrix.
		If Plaintext does not match the size of keyMatrix, any number of BOGUS element is added as required.
		Groups of letters in the Plaintext are multiplied with the keyMatrix to give its corresponding Cipher Values. These Cipher Values are then converted to corresponding Ciphertext:
			C = P * K
		INPUT: Enter the Plaintext and the value of key as string
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Hill Cipher is done using standard logic
		The Ciphertext is inputted from the user
		The key is inputted by the user in the form of a block of string. We will then have to convert this string into its corresponding keyMatrix.
		Groups of letters in the Ciphertext are multiplied with the inverse of the keyMatrix to give its corresponding Plaintext Values. These PLain Values are then converted to corresponding Plaintext:
			P = K^-1 * C
		INPUT: Enter the Ciphertext and the value of key as string
		The output will give the corresponding Plaintext

	c. Cryptanalysis (KNOWN PLAINTEXT ATTACK)
		The Cryptanalysis for Hill Cipher is done using known plaintext attack
		The goal is to figure out the key from given plaintext and ciphertext
		ASSUMPTION: In order to get the key, we make the assumption that the length of the Plaintext and Ciphertext is a perfect square.
		To get the key, we make square matrices of the Plaintext and Ciphertext and do the transformation:
			K = P^-1 * C
		INPUT: Enter the Plaintext and Ciphertext
		The output will be the key used for the cipher


3) SHIFT CIPHER
	a. Encryption
		The encryption for Shift Cipher is done using standard logic
		The Plaintext is inputted by the user
		The shift key is inputted by the user
		Each letter in the Plaintext undergoes the transformation:
			C = (P + K) mod 26
		INPUT: Enter the Plaintext and the value of both keys
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Shift Cipher is done using standard logic
		The Ciphertext is inputted by the user
		The shift key is inputted by the user
		Each letter in the Ciphertext undergoes the transformation:
			P = (C - K) mod 26
		INPUT: Enter the Ciphertext and the value of both keys
		The output will give the corresponding Plaintext

	c. Cryptanalysis (BRUTE FORCE APPROACH)
		The Cryptanalysis for Shift Cipher is done using brute force approach
		The goal is to figure out the key and its corresponding plaintext
		The Shift key has 26 possible values
		The program will print out all possible plaintexts for different values of the key
		INPUT: Enter the Ciphertext
		The output will be all possible plaintexts


4) SUBSTITUTION CIPHER
	a. Encryption
		The encryption for Substitution Cipher is done using standard logic
		The Plaintext is inputted from the user
		The key mapping is inputted by the user in the form of a block of string. The alphabet in order will map to each letter in the key Mapping.
		eg. key is 'qwertyuiopasdfghjklzxcvbnm'
			'a' will map to q; 'b' to 'w'; and so on.....
		Each letter in the Plaintext is converted to its corresponding mapping in the key.
		INPUT: Enter the Plaintext and the value of key as string
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Substitution Cipher is done using standard logic
		The Ciphertext is inputted from the user
		The key mapping is inputted by the user in the form of a block of string. The alphabet in order will map to each letter in the key Mapping.
		eg. key is 'qwertyuiopasdfghjklzxcvbnm'
			'a' will map to q; 'b' to 'w'; and so on.....
		Each letter in the Ciphertext will map to a particular position in the key mapping and that will give out Plaintest letter.
		INPUT: Enter the Ciphertext and the value of key as string
		The output will give the corresponding Plaintext

	c. Cryptanalysis (KNOWN PLAINTEXT ATTACK)
		The Cryptanalysis for Substitution Cipher is done using known plaintext attack
		The goal is to figure out the key from given plaintext and ciphertext
		ASSUMPTION: In order to get the key, we make the assumption that all distinct 26 alphabets are present in the Plaintext.
		To get the key, we move iteratively to find the alphabet in the plaintext, and its corresponding position in the Ciphertext will give us the correct mapping.
		INPUT: Enter the Plaintext and Ciphertext
		The output will be the key used for the cipher


5) TRANSPOSITION CIPHER
	a. Encryption
		The encryption for Transposition Cipher is done using standard logic and it is a Column Transposition Cipher
		The Plaintext is inputted from the user
		The key is inputted by the user in the form of a block of string. This string is converted to an order of indices to know the order of columns.
		eg. key is 'HACK'
			Since 'A' is first letter, followed by 'C', 'H', 'K'; our keyList will be '3124'
		If Plaintext does not match the size of keyMatrix, any number of BOGUS element is added as required.
		The letters in the Plaintext are written in the form of a matrix with number of columns similar to that of the key.
		eg. Plaintext: Reuben Suju
			key: 		H A C K
			keyList: 	3 1 2 4
			PMatrix: 	R E U B
						E N S U
						J U z z
		Now, the letters are read in order of their column of order.
		INPUT: Enter the Plaintext and the value of key as string
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Transposition Cipher is done using standard logic and it is a Column Transposition Cipher
		The Ciphertext is inputted from the user
		The key is inputted by the user in the form of a block of string. This string is converted to an order of indices to know the order of columns
		eg. key is 'HACK'
			Since 'A' is first letter, followed by 'C', 'H', 'K'; our keyList will be '3124'
		The letters in the Ciphertext are written in the form of a matrix with number of rows similar to that of the key.
		eg. Ciphertext: Reuben
			CMatrix:3 	R E
					1	E N
					2	U z
					4	B z
		Now, the letters are read in order of their row of order, but columnwise.
		INPUT: Enter the Ciphertext and the value of key as string
		The output will give the corresponding Plaintext

	c. Cryptanalysis (UNDOCUMENTED ATTACK) (KNOWN PLAINTEXT ATTACK)
		The Cryptanalysis for Column Transposition Cipher is an UNDOCUMENTED ATTACK using known plaintext attack
		The goal is to figure out the key from given plaintext and ciphertext
		CONCEPT OF ATTACK: We will iterate through the Plaintext and find the corresponding positions in the Ciphertext. Now, for the adjacent letters in Plaintext, we will find the distance between the same letters in the Ciphertext. If the length of Ciphertext is perfectly divisible by our distance, then we append the value to an array. At the end, the length of our key will be the value of highest occurance in our Array.
		With the length of key found, we now find the letters in the top row of the Plaintext Matrix. The order of the key can be found by comparing this top row with the letters that are spaced evenly with distance equal to key length in the Ciphertext.
		Thus we will get our key
		INPUT: Enter the Plaintext and Ciphertext
		The output will be the key used for the cipher


6) VIGENERE CIPHER
	a. Encryption
		The encryption for Vigenere Cipher is done using standard logic
		The Plaintext is inputted from the user
		The key mapping is inputted by the user in the form of a block of string. The key is repeated as many times to match the lenght of Plaintext to form the keyStream.
		eg. key is 'HELLO'; Plaintext is 'ReubenSujuVarghese'
			Length of Plaintext is 18
			KeyStream is 'HELLOHELLOHELLOHEL'
		Each letter in the Plaintext undergoes the transformation:
			C[i] = (P[i] + K[i]) mod 26
		INPUT: Enter the Plaintext and the value of key as string
		The output will give the corresponding Ciphertext

	b. Decryption
		The decryption for Vigenere Cipher is done using standard logic
		The Ciphertext is inputted from the user
		The key mapping is inputted by the user in the form of a block of string. The key is repeated as many times to match the lenght of Ciphertext to form the keyStream.
		eg. key is 'HELLO'; Plaintext is 'ReubenSujuVarghese'
			Length of Plaintext is 18
			KeyStream is 'HELLOHELLOHELLOHEL'
		Each letter in the Ciphertext undergoes the transformation:
			P[i] = (C[i] - K[i] + 26) mod 26
		INPUT: Enter the Ciphertext and the value of key as string
		The output will give the corresponding Plaintext

	c. Cryptanalysis (KNOWN PLAINTEXT ATTACK)
		The Cryptanalysis for Vigenere Cipher is done using known plaintext attack
		The goal is to figure out the key from given plaintext and ciphertext
		To get the key, we do the transformation:
			K[i] = (C[i] - P[i]) mod 26
		The key may contain repeating elements as it is a keystream used for the plaintext. Remove all repeating elements to get the final key.
		INPUT: Enter the Plaintext and Ciphertext
		The output will be the key used for the cipher
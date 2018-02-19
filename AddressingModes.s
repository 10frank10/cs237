D0-D7 A0-A6

Dn Data Register Direct
An Address Register Direct
(An) Address Register Indirect


movea.L A1,A2 #move the address in A1 to the register in A2 

movea.L (A1),A2 #give me the contents in memory at A1 and put it in A2
				#move does not destroy the force, it overrides the destination


lea number,A0 #load the effective address of number into A0

0000 3110 number: dc.L 25

A0 now contains the address of number which is 0000 3110

move.L(A0),D1 #0000 0019 is stored in D1 because 25 base 10 = 0000 0019 base 16
				#because A0 has () around it, the contents are put into D1 rather
				#than just the address. Therefore D1 contains 0000 0019 rather than
				#0000 3110


add.w (A0),D1 #adds A0 and D1 and stores the value in D1

add.w (A0)+,D1 #plus sign adds the size of the instruction to the address register 
				#for example, A0 has 2 bytes added to it in this example because 
				#a word is the size of 2 bytes 
(An)+ Address Register with post increment

-(An) Address Register with	pre-increment 

#n immediate 

move.w #2,D0 #move the number 2 to D0 

<ea> absolute long

move.w alpha,D0 #alpha is an address
				#a label is an address and nothing more 
				#go to alpha and starting at alpha, read one word (2 bytes) in D0

move.w #alpha,D0
				#put the contents in memory at alpha in D0 


move.w 2,D0 #go to address 2 and starting at address 2, take one word
			#and move it to D0


#[] calculates the address of the element 

#[10] --> address of array + (index * width)

num + 0 [0]
num + 12 [1]
num + 24 [2]
num + 36 [3]
.........
num + 120 [10]


			

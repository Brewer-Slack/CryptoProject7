'''
Class: CPSC 353
Name: Brewer Slack
Name1: Quin Bingham
Name2: Jon Reid
GU	Username: bslack
'''

import math
import random

# diffie-hellman exchange. Takes a public prime, primitive root, and Bob's result
# returns: Alice and Bob's shared key, K.
def dif_hell(p, g, B): #715225741, 2
	a = random.randint(1, p)
	#b = random.randint(1, p) #bob
	A = mod((g ** a), p)
	#B = mod((g ** b), p) # bob
	K = mod((B ** a), p)
	#check_bob = mod((A ** b), p)
	return(K)

def sDES():
	pass


def el_gamal_enc(p, g, m):
	g = mod(primitive_root(p),p)
	A = random.randint(1, p)
	B = g ** A
	k = random.randint(1,p)
	c1 = g^k
	c2 = (B^k)*m
	return (c1, c2, A)
	
			  
def el_gamal_dec(p, g, c1, c2, A):
	return c2 / c1^A
	
	
	
	
	
	
#!/bin/bash

# assign public values
echo "Alice and Bob agree on values for p and g publicly"
read -p "p=" p
read -p "g=" g

# choose secret numbers
echo "Alice chooses a random number (a) and keeps it secret"
read -p "a=" a
echo "Bob chooses a random number (b) and keeps it secret"
read -p "b=" b

# calculate the value of A and B
A=$(($g ** $a % $p))
echo "Alice calculates the value of A as g^a mod p and sends it to Bob.
Bob now knows A=$A, p=$p, g=$g, and b=$b."

B=$(($g ** $b % $p))
echo "Bob calculates the value of B as g^b mod p and sends it to Alice.
Alice now knows B=$B, p=$p, g=$g, and a=$a."

# calculate the secret value for symmetric key
echo "Alice calculates the value of s as B^a mod p"
s=$(($B ** $a % $p))
echo "s=$s"

echo "Bob calculates the value of s as A^b mod p"
s=$(($A ** $b % $p))
echo "s=$s"

# summary
echo "Alice and Bob have derived the same secret value to use to generate a symmetric key
Mallory can know p, g, A, and B, but cannot know s without a or b"

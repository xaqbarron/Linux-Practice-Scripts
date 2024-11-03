#!/bin/bash

#input five numbers
read -p "Enter 1st number: " number1
read -p "Enter 2nd number: " number2
read -p "Enter 3rd number: " number3
read -p "Enter 4th number: " number4
read -p "Enter 5th number: " number5

#define equations
sum=$(($number1 + $number2))
difference=$(($sum - $number3))
product=$(($difference * $number4))
quotient=$(($product / $number5))

#output
echo "The sum of $number1 and $number2 is $sum."
echo "The difference of $sum and $number3 is $difference."
echo "The product of $difference and $number4 is $product."
echo "The quotient of $product and $number5 is $quotient."

#!/bin/bash

# input names
read -p "Enter 1st name: " name1
read -p "Enter 2nd name: " name2
read -p "Enter 3rd name: " name3
read -p "Enter 4th name: " name4
read -p "Enter 5th name: " name5

# assign names to array
names_arr=($name1 $name2 $name3 $name4 $name5)

# input salaries in array
for ((i = 0; i < 5; i++)); do
read -p "Enter ${names_arr[i]}'s salary: "$'\n' -r salary_arr[i]
done

# assign variables to salary array
salary1=${salary_arr[0]}
salary2=${salary_arr[1]}
salary3=${salary_arr[2]}
salary4=${salary_arr[3]}
salary5=${salary_arr[4]}

# combine data into two columns
output="$name1 $salary1
$name2 $salary2
$name3 $salary3
$name4 $salary4
$name5 $salary5"

# output data: awk swaps columns so that you can sort by salary and then use awk again to swap columns back
echo "Output:"
echo "$output" | awk '{ print $2, $1 }' | sort -rn | awk '{ print $2, $1 }'

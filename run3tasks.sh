#!/bin/bash

# define list of tasks as array
scripts=("mathscript.sh" "nameagescript.sh" "salarysortscript.sh")

# loop through scripts and change permissions to allow all
for ((i = 0; i < 3; i++)) do
chmod 777 "${scripts[i]}"
done

# loop through scripts and execute them
for ((i = 0; i < 3; i++)) do
echo "Running ${scripts[i]}"
./"${scripts[i]}"
echo "Finished running ${scripts[i]}"
done

#! /bin/bash

if [ $# -ne 2 ]; then
	echo "Invalid input "
	exit 1
elif [ $1 -lt  1 ] || [ $2 -lt "1" ]; then
	echo "Input must be greater than 0"
	exit 1
else

	for var1  in $(seq 1 $1)
	do
		for var2 in $(seq 1 $2)
		do
			mul=`expr $var1 \*  $var2`
			printf "%0.2d * %0.2d = %0.4d  " "$var1" "$var2" "$mul" 
		done
		echo "\n"
	done
fi




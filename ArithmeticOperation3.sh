#!/bin/bash -x

#Taking the Three inputs from the user
read -p "Enter the first Input " Firstuser
read -p "Enter the first Input " Seconduser
read -p "Enter the first Input " Thirduser

a=$Firstuser
b=$Seconduser
c=$Thirduser

result1=$((a+b*c))
	echo "$a+$b*$c = $result1"
result2=$((a*b+c))
	echo "$a*$b+$c = $result2"
result3=`echo "scale=2; $c+$a/$b" |bc`
	echo "$c+$a/$b = $result3"

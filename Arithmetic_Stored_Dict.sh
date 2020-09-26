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
result4=$((a%b+c))
	echo "$a%$b+$c = $result4"
#Declaring Dictionary

declare -A result
	result[computation1]=$result1
	result[computation2]=$result2
	result[computation3]=$result3
	result[computation4]=$result4
echo ${result[@]}

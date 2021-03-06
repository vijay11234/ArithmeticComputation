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

for(( value=0; value<4; value++ ))
do
	Arr[value]=${result[computation$((value+1))]}
done
echo ${Arr[@]}

#descending order
for (( value1=0; value1<${#Arr[@]}; value1++ ))
do
	for (( value2=value1+1; value2<${#Arr[@]}; value2++ ))
	do
		if (($(echo "${Arr[value1]} < ${Arr[value2]}"| bc -l)))
		then
			temp=${Arr[value1]}
			Arr[value1]=${Arr[value2]}
			Arr[value2]=$temp
		fi
	done
done
echo "Array in Descending order are : ${Arr[@]}"
#Ascending order
for (( value1=0; value1<${#Arr[@]}; value1++ ))
do
   for (( value2=value1+1; value2<${#Arr[@]}; value2++ ))
   do
      if (($(echo "${Arr[value1]} > ${Arr[value2]}"| bc -l)))
      then
         temp=${Arr[value1]}
         Arr[value1]=${Arr[value2]}
         Arr[value2]=$temp
      fi
   done
done
echo "Array in ascending order are : ${Arr[@]}"

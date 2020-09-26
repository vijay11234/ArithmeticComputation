  
#!/bin/bash -x

#Taking the Three inputs from the user
read -p "Enter the first Input " Firstuser
read -p "Enter the first Input " Seconduser
read -p "Enter the first Input " Thirduser

a=$Firstuser
b=$Seconduser
c=$Thirduser

result=$((a+b*c))
	echo "$a+$b*$c = $result"

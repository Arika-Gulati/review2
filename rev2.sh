echo "enter a number"
read num
if [ $num -gt 99 ] && [ $num -lt 1000 ]
then

rem=0
rev=0
temp=$num
while [ $temp -ne 0 ]
do
	rem=$(($temp%10))
	rev=$(($rev*10+$rem))
	temp=$(($temp/10))

done

if [ $rev -eq $num ]
then

	echo "$num is palindrome"
else
	echo "$num entered is not palindrome"
fi

even=0
odd=0

for ((i=2;i<=$num*$num;i++))
do
	while [ $(($num%i)) -eq 0 ]
	do
		if [ $((i%2)) -eq 0 ]
		then
			array[even]=$i
			((even++))
		fi
		if [ $(($i%2)) -ne 0 ]
		then
			array2[odd]=$i
			((odd++))
		fi


		num=$((num/$i))
	done



done

echo "array of even factors :"
echo ${array[@]} 
echo "array of odd factors :"

echo ${array2[@]}

else 
	echo "EXIT"
fi

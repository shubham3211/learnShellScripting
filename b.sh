# age=25
# if [ $age -gt 10 -a $age -lt 50 ]
# then 
#   echo "$age is less than 50 ang greater than 10"
# else
#   echo "$age is less than 10 or greater than 50"
# fi

# if [ $age -gt 10 ] && [ $age -lt 50 ]
# then
#   echo "$age is less than 50 and greater than 10"
# else
#   echo "$age is less than 10 or greater than 50"
# fi

# if [[ $age  -gt 10 && $age -lt 50 ]]
# then 
#   echo "$age is less than 50 and greater than 10"
# else 
#   echo "$age is less than 10 or greater than 50"
# fi

# if [[ $age -gt 10 || $age -lt 50 ]]
# then 
#   echo "$age is greater than 10 or less than 50"
# else
#   echo "$age is less than 10"
# fi

# if [ $age -gt 10 ] || [ $age -lt 50 ]
# then
#   echo "$age is greater than 10 or less than 50"
# else
#   echo "$age is less than 10"
# fi

# if [ $age -gt 10 -o $age -lt 50 ]
# then
#   echo "$age is greater than 10 or less than 50"
# else
#   echo "$age is less than 10"
# fi

# num1=20
# num2=5

# echo $(( num1+num2 ))
# echo $(( num1-num2 ))
# echo $(( num1*num2 ))
# echo $(( num1/num2 ))

# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 \* $num2 )

# echo $num1+$num2 | bc
# echo $num1-$num2 | bc
# echo $num1*$num2 | bc
# echo $num1/$num2 | bc

# vehicle=$1

# case $vehicle in
#   "car")
#     echo "vehicle is a $vehicle";;
#   "bike")
#     echo "vehicle is a $vehicle";;
#   "truck")
#     echo "vehicle is a $vehicle";;
#   *)
#     echo "cannot identify vehicle type"
# esac

# echo -e "Enter a character \c"
# read character

# case $character in 
#   [A-Z])
#     echo "Charactre is in range A-Z";;
#   [a-z])
#     echo "Character is in range a-z";;
#   [0-9])
#     echo "Character is in range 0-9";;
#   ?)
#     echo "Character is a single character";;
#   *)
#     echo "Cannot identify the character type";;
# esac

# echo $?

num=1
until [ $num -eq 10 ]
do 
  echo $num
  (( num++ ))
done

function toUpper() {
  echo $1 | tr '[a-z]' '[A-Z]'
}

toUpper "shubham"

s1="abc"
s2="abc"

if [ $s1 == $s2 ]
then
echo "Strings are equal"
fi

s1="bcd"

if [ $s1 != $s2 ]
then
echo "Strings are not equal"
fi

if [ ${#s1} ]
then
echo "Length of string is non zero"
fi
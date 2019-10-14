#! /bin/bash
# echo "Enter elements in array"
# read -a names
# echo "Names : ${names[0]} ${names[1]}"

# echo "Enter"
# read
# echo "the input is $REPLY"

# echo shell name is $BASH
# echo shell version is $BASH_VERSION
# echo location of home is $HOME
# echo print working directory is $PWD

# name=shubham
# echo The name is $name

# echo "Enter name"
# read name
# echo $name

# echo "Enter names"
# read name1 name2 name3
# echo "Entered names are"$name1 "Second name is"$name2 "Third name is"$name3

#enter the input on the same line as displayed string
# read -p "username: " username
# echo "The username is $username"

#this wont display the input given
# read -s password
# echo "password is $password" 

#input an array
# echo "Enter names"
# read -a names
# echo "Names : ${names[0]}, ${names[1]}"

#when we dont give any variablle to read command it goes to the REPLY variable
# echo "Enter names"
# read
# echo $REPLY

#the arguments pased from the terminal will be stored in $1 variable $2 valiable and so on.. $0
##0 wii contain the script name
# echo $1 $2 $3 $0

# $@ will store the arguments given from terminal as an array
#when we pass arguments like this the  the first argument will go to the 0th index
# args=("$@")
# echo "${args[0]}, ${args[1]}"
# echo $@

#this prints number of arguments passes
# echo $#

# count=10

# if [ $count -eq 10 ]
# then 
#   echo "True"
# fi

# if [ $count -ne 9 ]
# then 
#   echo "False"
# fi

# if [ $count -lt 15 ]
# then 
#   echo "True"
# fi

# if [ $count -gt 2 ]
# then 
#   echo "10 greater than 2"
# fi

# if [ $count -le 10 ]
# then 
#   echo "10 lest than equal to 10"
# fi

# if [ $count -ge 10 ]
# then 
#   echo "10 greater than equal to 10"
# fi

# if (( $count == 10 ))
# then 
#   echo "10 equal to 10"
# fi

# if (( $count != 1 ))
# then 
#   echo "10 not equal to 1"
# fi

# word=abc

# if [ $word=="abc" ]
# then 
#   echo "$word equal to abc"
# fi

# if [[ $word < "z" ]]
# then
#   echo "$word is greater than z"
# fi

# if [ $word == "abz" ]
# then 
#   echo "$word is not equal to abz"
# elif [ $word == "abc" ]
# then 
#   echo "$word is equal to abc"
# else 
#   echo "$word is not equal to abz"
# fi

# echo -e "Enter the name of the the file \c"
# read file_name

#-e flag is used to check if file exist or not
# if [ -e $file_name ]
# then
#   echo $file_name "found"
# else #no need for then in else command
#   echo $file_name "not found"
# fi

#-f is used to check if the file exist and it is a regular file or not
# if [ -f $file_name ]
# then 
#   echo $file_name "is a regular file"
# else
#   echo $file_name "is not a regular file"
# fi

#-d is used to check if the file specified is a directory or not
# if [ -d $file_name ]
# then 
#   echo $file_name "is a directory"
# else
#   echo $file_name "is not a directory"
# fi

#-c is used for character special file
# if [ -c $file_name ]
# then 
#   echo $file_name "is a character special file"
# else
#   echo $file_name "is a not a character special file"
# fi

#-b is used for block special file
# if [ -b $file_name ]
# then
#   echo $file_name "is a block special file"
# else 
#   echo $file_name "is not a block special file"
# fi

#-s is used to check if the file is empty or not
# if [ -s $file_name ]
# then
#   echo $file_name "is not empty"
# else
#   echo $file_name "is empty"
# fi

#-w, -r, -x check if the file has write, read, execute permissions respectively

# echo -e "Enter the filename \c"
# read file_name
# if [ -f $file_name ]
# then
#   echo "$file_name exists"
#   if [ -w $file_name ]
#   then
#     echo "type some text to quit press ctr+d"
#     cat >> $file_name
#   else
#     echo "$file_name doesnot exist"
#   fi
# else
#   echo "$file_name doesnot exixt"
# fi

#use of and operator
# age=25
# if [ $age -gt 18 ] && [ $age -lt 30 ]
# then
#   echo "valid age"
# else
#   echo "Invalid age"
# fi

# country=India
#another way of using and operator
# if [ $country == "India" -a  $country != "Japan" ]
# then 
#   echo "Country is India"
# else
#   echo "Country is not India"
# fi

#another way of using and operator
# planet=Earth
# if [[ $planet == "Earth" && $planet != "Jupiter" ]]
# then 
#   echo "$planet is Earth"
# else
#   echo "$planet is not Earth"
# fi

# age=60
# if [ $age -ge 18 ] || [ $age -le 30 ]
# then
#   echo "$age is a valid age"
# else
#   echo "$age is invalid age"
# fi

# if [ $age -ge 18 -o $age -le 30 ]
# then
#   echo "$age is valid age"
# else 
#   echo "$age is not a valid age"
# fi

# if [[ $age -ge 18 || $age -le 30 ]]
# then 
#   echo "$age is a valid age"
# else
#   echo "$age is not a valid age"
# fi

#arithematic operations in shell script
#echo comman takes everything we write as a string
# num1=20.5
# num2=5

# echo $((num1 + num2))
# echo $((num1 - num2))
# echo $((num1 * num2))
# echo $((num1 / num2))
# echo $((num1 % num2))

# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 \* $num2 ) #when using expr command we have to use the escape character with *
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 % $num2 )

# echo $num1 + $num2 | bc
# echo $num1 - $num2 | bc
# echo $num1 \* $num2 | bc
#here scale specify that the no of decimals is 2
# echo "scale=2;$num1 / $num2" | bc

#division above is not giving us the proper value
#here -l is used with bc to use the math librairy
# echo "scale=2;sqrt($num1)" | bc -l
# echo "scale=2;3^3" | bc -l

# vehicle=$1

# case $vehicle in 
#   "car")
#     echo "The rent of the $vehicle is 100";;
#   "truck")
#     echo "the rent of the $vehivle is 500";;
#   "bicycle")
#     echo "The rent of the $vehicle is 1";;
#   *)
#     echo "Unknown Vehicle"
# esac

# echo -e "Enter some character: \c"
# read character

# case $character in
#   [a-z])
#     echo "The $character is in range a-z";;
#   [A-Z])
#     echo "The $character is in range A-Z";;
#   [0-9])
#     echo "The $character is in range 0-9";;
#   ?)
#     echo "The $character is a single character";;
#   *)
#     echo "Unkown character"
# esac

# os=('windows' 'ubuntu' 'kali')
#this is how we add elements to the array
# os[3]='mac'
#this is how we remove the element from the array
# unset os[2]
# echo "${os[@]}"
# echo ${os[1]}
#print the indexes of the array
# echo ${!os[@]}
#prit the length of the array
# echo ${#os[@]}

#we can treat any variable as an arry but the value would be assigned to 0th index
# string=lkledlwmelkewlk
# echo ${string[@]}
# echo ${string[0]}
# echo ${string[1]}
#the length of string array is 1 as the element is assigned to 0th index
# echo ${#string[@]}

# n=1
# while [ $n -le 10 ]
# do
#   echo $n
#   n=$((n+1))
# done

# n=1
# while [ $n -le 10 ]
# do
#   echo $n
#   (( n++ ))
#   sleep 1 #pauses the execution for 1 second
# done

# n=1
#open 3 terminal
# while [ $n -le 3 ]
# do
#   echo $n
#   (( n++ ))
#   gnome-terminal &
# done

# while read p
# do
#   echo $p
# done < hello.sh
#this is input redirection ie whereever the arrow points the read content of the file would be 
#given in that direction

# cat hello.sh | while read p 
# do 
#   echo $p
# done

#until loops
# n=1
#when this condition is false the loop executes
# until [ $n -ge 10 ]
# do
#   echo $n
#   (( n++ ))
# done

#for loop

# for i in 1 2 3 4 5
# do  
#   echo $i
# done

# for i in {1..10}
# do 
#   echo $i
# done

#here the value of i is incremented by 2
# for i in {1..10..2}
# do
#   echo $i
# done

# for ((i=1; i<10;i++))
# do
#   echo "i is $i"
# done

# for command in ls pwd date
# do
#   echo "----------------------$command-----------------------"
#   #doing this will execute the command
#   $command | cat -n
# done

#here * would give all the items present in the directory
# for item in *
# do
#   if [ -d $item ]
#   then
#     echo $item
#   fi
# done

#select loop
#select loop give us a menu and then we can select the item and execute a statement
# select name in shubham vikram parth naresh
# do
#   echo "$name selected"
# done

# select name in shubham vikram parth naresh
# do
#   case $name in 
#     shubham)
#       echo "$name selected";;
#     vikram)
#       echo "$name selected"
#     parth)
#       echo "$name selected";;
#     naresh)
#       echo "$name selected";;
#     *)
#       echo "Unknown option"
#   esac
# done

# for ((i=0;i<10;i++))
# do
#   if [ $i -gt 5 ]
#     then
#       break
#   fi
#   echo "$i"
# done

# for ((i=0;i<10;i++))
# do 
#   if [ $i -eq 6 -o $i -eq 7 ]
#   then
#     continue
#   fi
#   echo $i
# done

# function Hello() {
#   echo "Hello world"
# }

# quit() {
#   exit
# }

# Hello

# function print() {
#   #here $1 is for ist argument $2 is for the second argument and so on...
#   echo $1 $2
# }

# print hello shubham

# function print() {
#   #here the variable became local and it acnnot be accesseed outside
#   local name=$1
#   echo "The name is : $name : Inside the function"
# }

# name=vikram
# echo "the name is $name :Before"
# print shubham
# echo "the name is $name :After"

# usage() {
#   echo "You need to give argument :"
#   echo "usage : $0 file_name"
# }

# is_file_exist() {
#   local file=$1
#   [[ -f "$file" ]] && ( return 0 || return 1 )
# }

# [[ $# -eq 0 ]] && usage

# if ( is_file_exist "$1" )
# then
#   echo "File Found"
# else
#   echo "File Not Found"
# fi

# var=31
# readonly var

# hello() {
#   echo "hello world"
# }

# readonly -f hello

#this function is not valid as it is a read only function
# function hello() {
#   echo "hello again"
# }

#this will give us a list of all the bilt in readonly variables
# readonly

#this will give all the readonly functions
# readonly -f 

# $$ is used to print the pid of the script
# trap "sigint comman is dected" 2
# echo "Pid is $$"
# while (( count < 10 )) 
# do 
#   sleep 10
#   echo $count
#   (( count++ ))
# done

# trap "Exit command is detected" 0
# echo "Hello world"
# exit 0

#bash -x is used to debug the script ie run the script like this bash -x ./a.sh
#we can also write #!/bin/bash -x at the top to debug the script
#we can write set -x and debugging will start from the point we write set -x 
#set +x would deactivate debugging
# set -x
# while (( count < 10 ))
# do
#   echo $count
#   (( count++ ))
# done
# set +x

# echo $USER
# echo $LOGNAME
# echo $PATH
# echo $PWD
# echo $?

# args=("$@")
# echo ${args[0]}
# echo $#
# echo $*

#we can use commands like this
# echo Today date is $(date)

# echo "List of files that start with $(ls [a-z]*)"

# echo "This is a echo command"
# wc < ./w.txt

# ls > cat.txt

# cat w.txt >> z.txt

# if [ -d Acbd ]
# then
#   echo "It is a directory"
# fi

# if [ -f cat.txt ]
# then
#   echo "It is a file and exist"
# fi

# if [ -s cat.txt ]
# then
#   echo "The size is greater than 0"
# fi

# if [ -r cat.txt -o -w cat.txt -o -x cat.txt ]
# then 
#   echo "The file is readable or writable or executable"
# fi

# if [ -a cat.txt ]
# then
#   echo "File is ascii file"
# else
#   echo "File is not an ascii file"
# fi

# [ -d cat.txt ]
# echo $?

# s1=alpha
# s2=beta

# if [ s1 == s2 ]
# then
#   echo "The strings are equal"
# fi

# if [ s1 != s2 ]
# then
#   echo "The strings are not equal"
# fi

# if [ -n s1 ]
# then
#   echo "The length of string is greater than 0"
# fi

# if [[ s1 < s2 ]]
# then
#   echo "S1 is less than s2"
# else
#   echo "s1 is greater than s2"
# fi

# s3=

# if [ -z s3 ]
# then 
#   echo "Length of string is 0"
# else
#   echo "Length of string is not 0"
# fi

# num1=25
# num2=5

# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))

# echo $(expr $num1 + $num2)
# echo $(expr $num1 - $num2)
# echo $(expr $num1 \* $num2)
# echo $(expr $num1 / $num2)
# echo $(expr $num1 % $num2)

# echo "relational operators"
# echo $(( num1 > num2 ))
# if [ $num2 -le $num1 ]
# then
#   echo "$num2 less than equal to $num1"
# fi

#here 0 is for success and 1 is for failure only for echo $0
# test 10 == 1
# echo $?
# num1=25
# num2=5
# s=Shubham
# #here 0 is for success and 1 is for failure only for echo $0 
# [ $num1 != $num2 ]
# echo $?

# [ -f ./cat.txt ]
# echo $?

# test $num1 -le $num2
# echo $?

# test $num1 -ge $num2
# echo $?

# test -n $s
# echo $?

# test -r ./cat.txt
# echo $?

# echo $@
# args=($@)
# echo ${args[1]}

# echo $(( ${args[0]} + ${args[1]} + ${args[2]} + ${args[3]} + ${args[4]}))
# echo $(expr ${args[0]} + ${args[1]} + ${args[2]} + ${args[3]} + ${args[4]} )

# if [ -r ./cat.txt ]
# then
#   cat ./cat.txt | echo $(wc)
#   cat ./cat.txt | wc
# fi

# args=($@)
# echo $((${args[0]} + ${args[1]}))
# echo $((${args[0]} * ${args[1]}))
# echo $((${args[0]} / ${args[1]}))
# echo $(expr ${args[0]} + ${args[1]})
# echo $(expr ${args[0]} - ${args[1]})
# echo $(expr ${args[0]} \* ${args[1]})

# num1=10
# num2=20

# if [ $num1 -lt $num2 ]
# then
#   echo "$num1 less than $num2"
# fi


# file1=cat.txt
# file2=c1.txt
# if cp $file1 $file2
# then
#   echo "Command executed successfully"
# fi

# adapter=EGA

# if [ $adapter=ma ]
# then 
#   echo "You have enhanced graphics adapter"
# elif [ $adapetr=EGA ]
# then
#   echo "You have ma"
# else 
#   echo "Dont know the type"
# fi

# count=1
# while [ $count -lt 11 ]
# do
#   echo $count
#   ((count++))
# done

# echo -e "Enter the name of the file \c"
# read fileName




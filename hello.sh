#! /bin/bash
echo "Hello World"
echo "Our Shell Name is" $BASH
echo "Our Shell Version is" $BASH_VERSION
echo "Our Home directory is" $HOME
echo "Our Current working directory is" $PWD

name=Shubham
echo "My name is" $name

echo "Enter name"
read name
echo $name

read n1 n2 n3
echo "names $n1, $n2, $n3"

read -p "username: " user_var
read -sp "password" password
echo "username: $user_var"
echo "password: $password"
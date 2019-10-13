#! /bin/bash
count=10
if [ $count -ne 9 ]
then
  echo "the value is 10"
fi

word=abc

#with -eq it was showing the error integer value excepted

if [ $word == "abc" ]
then  
  echo "the word is abc"
fi

if [[ "a" < "b" ]]
then
  echo "a is less than b"
elif [[ "c" < "d" ]]
then
  echo "c is less than d"
else
  echo "a is greater than b"
fi


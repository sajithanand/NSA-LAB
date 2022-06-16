#shell script to read 3 numbers and test whether they can be sides of a triangle

if [ $# -ne 3 ]
then 
	echo "syntax error"
	echo "< $0 a b c>"
	exit
fi

a=$1
b=$2
c=$3
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
 	echo " $a $b $c these are not sides a triangle "
	exit
fi
echo "$a $b $c these are the sides of a triangle " 


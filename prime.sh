#shell script using command line to test whether given number is prime or not
if [ $# -ne 1 ] 
then 
echo "syntax error"
exit
fi
p=$1
i=2
while [ $i -le `expr $p / 2` ]
do
	if [ `expr $p % $i` -eq 0 ]
	then
		echo "the number $p is not a prime number"

		exit

	fi
i=`expr $i + 1`
done
echo "the number $p is a prime number"


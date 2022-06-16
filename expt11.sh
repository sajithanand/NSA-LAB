#shell script to print specified range of lines from given files
if [ $# -eq 0 ]
then 
	echo "syntax error"
	echo "syntax is <$0> <filename1> <filename2> etc.."
	exit 1
fi

c=$#
echo "enter lower limit:"

read l
echo "enter upper limit:"
read u



while [ $c -gt 0 ]
do 
	file=$1
echo "$1 lines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0


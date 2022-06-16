if [ $# -ne 1 ]
then
	echo "syntax error"
	echo "syntax is <$0> <filename>"
	exit 1
fi

file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter

while [ 0 -le $c ]
do
cat $file | head -$c | tail -n +$c
c=`expr $c - 1`
done 
exit 0

#shell script to count the number of words and lines in a file
if [ $# -ne 1 ]
then 
	echo "syntax error"
	echo "< $0 filename >"
	exit
fi

fname=$1
ter=`tty`
exec < $fname
i=0
j=0
while read line
do
	i=`expr $i + 1`

for c in $line 
do
	j=`expr $j + 1`

done

done
echo "$fname has"
echo "no of lines->$i"
echo "no of words->$j"
exec < $ter


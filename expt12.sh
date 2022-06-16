#shell script to copy a set of files given as pairs at command prompt

if [ $# -eq 0 ]
then
	echo "syntax error"
	echo "$0 file1 file2 etc..."
	exit
fi

i=$#
while [ $i -gt 0 ]
do

echo "contents in $1" >> newfile
echo "\n" >> newfile
cat $1 >> newfile
echo "\n" >> newfile

shift
i=`expr $i - 1`
done





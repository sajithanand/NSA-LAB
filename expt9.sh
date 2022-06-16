#shell script to delete all lines if a file containing word linux
if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi

echo " enter the file name:"
read file

ter=`tty`
exec < $file

while read line
do
echo $line | grep linux > file2
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> file1
done

mv file1 $file
rm file2
exec < $ter


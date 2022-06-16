#shell script to compare two files. If the files are identical delete one
echo "enter filename 1:"
read f1
echo "enter filename 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then
	rm $f2
	echo "second file removed"
	exit
fi
echo "files not identical"
 

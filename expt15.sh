if [ $#  -ne 0 ]
then
	echo "Syntax error"
	echo "Syntax  is <$0>"
	exit 1
fi

directry(){
	if [ -d "$1" ]
    then
     ls -l -d "$1"
    else
			ls -l "$1"
	fi
}



while :
do
echo "\n1.ordinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files for UGO"
echo "5.Writable files for UGO"
echo "6.Executable files for UGO"
echo "---------------------------"
echo "\nselect your option:"
read opt


ls -l > lsl
ter=`tty`
case $opt in

1) echo "\nordinary files\n"
for file in *
do
	if [ -f "$file" ]
	then
		ls -l "$file"
	fi
done
;;
2) echo "\ndirectory files\n"
for file in *
do
        if [ -d "$file" ]
        then
                ls -l -d "$file"
        fi
done
;;
3) echo "\nSpecial files\n"
for file in *
do
        if [ -s "$file" ]
        then
        	directry "$file"
        	
        fi
done
;;
4) echo "\nReadable files for UGO\n"
exec < lsl
while read line
	
	do
		echo $line | grep .r..r..r.. > /dev/null
		if [ $? -eq 0 ]
		then
			fn=`echo $line | cut -d " " -f 9-`
			directry "$fn"
			
		fi
done
exec < $ter
;;
5) echo "\nwritable files for UGO\n"
	exec < lsl
	while read line
	do
		echo $line | grep ..w..w..w. > /dev/null
		if [ $? -eq 0 ]
		then
			fn=`echo $line | cut -d " " -f 9-`
			directry "$fn"
		fi
done
exec < $ter
;;
6) echo "\nExicutable files for UGO\n"
exec < lsl
	while read line
	do
		echo $line | grep ...x..x..x > /dev/null
		if [ $? -eq 0 ]
		then
			fn=`echo $line | cut -d " " -f 9-`
			directry "$fn"
		fi
        
done
exec < $ter
;;
*)	rm lsl	
	exit 0
;;
esac
done


#checking leap year
if [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -ne 1 ]
then
	y=`date +%Y`
else
	y=$1
fi
d4=`expr $y % 4`
d100=`expr $y % 100`
d400=`expr $y % 400`
if [ $d4 -eq 0 -a $d100 -ne 0 -o  $d400 -eq 0 ]
then 
	echo " $y is a leapyear"
else
	echo " $y is not a leapyear"
fi


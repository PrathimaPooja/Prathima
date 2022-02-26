
if [ -e $1 ]
then
set -- `ls -ld $1`
echo "permission:$1"
echo "Links:$2"
echo "User:$3"
echo "Group:$4"
echo "Filesize:$5"
echo "Month:$6"
echo "Date:$7"
echo "Time/year:$8"
echo "filename:$9"
else
echo "please enter the filename"
fi



user=`whoami`
set -- `who`
for i in $*
do
user1=$1
if [ $user = $user1 ]
then
set -- `echo $4 | tr ":" " "`
h=$1
if [ $h -ge 00 ] && [ $h -lt 12 ]
then
echo "Good morning Mr./Ms. $user"
elif [ $h  -ge 12 ] && [ $h -lt 16 ]
then
echo "Good afternoon Mr./Ms. $user"
elif [ $h -ge 16 ] && [ $h -lt 20 ]
then
echo "Good evening Mr./Ms. $user"
else
echo "Good night Mr./Ms. $user"
fi
exit
else
shift 5
fi
done


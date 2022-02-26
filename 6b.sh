n=0
c=0
for i in `ls`
do
n=`expr $n + 1`
fl=`expr length $i`
if [ $fl -ge 10 ]
then
echo "The file $i has $fl characters"
else
c=`expr $c + 1`
fi
done
if [ $c -eq $n ]
then
echo "No filename have 10 characters in directories"
fi

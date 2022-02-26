echo -n "Enter the first filename:"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
fpermission1=$1
else
echo -n "file doesn't exists"
exit 
fi
echo -n "enter the second filename"
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
fpermission2=$1
else 
echo "file doesn't exists"
exit
fi

if [ $permission1 = $permission2 ]
then
echo "files are identical"
echo "permission of both files is $fpermission1"
else
echo "files are not identical"
echo "permission of $file1 is $fpermission1"
echo "permission of $file2 is $fpermission2"
fi

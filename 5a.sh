echo -n "Enter the filename:"
read file1
if [ -f $file1 ]
then
set -- `ls -ld $file1`
echo "The file $file1 is created on $6 $7 $8"
else
echo "file doesn't exists"
fi


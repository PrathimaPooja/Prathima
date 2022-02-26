for i in $*
do
if [ -f $i ]
then
echo "--------------------------------file contents of $i--------------------------------"
cat $i | tr "a-z" "A-Z"
echo "------------------------------------------------------------------------"
else
echo "file $i  doesn't exists"
fi
done

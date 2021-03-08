echo "executing filename change script........"
ls | grep -i "MovieRulz." > filenames
while read i ; do echo $i ; done < filenames | awk -F "-" '{print $1}' | sort | uniq > tmp
cat tmp

while read file ; 
	do
		while read i  ; 
		do
			a=`echo $file | sed "s/$i -//g"`; mv "$file" "$a" > /dev/null 2>&1 
		done < tmp

	echo $file
	done < filenames
rm tmp
echo "change file names - script completed successfully."

#!/bin/bash


echo "<html>" > index.html
echo "<head>" >> index.html
echo "<title>CSS blending test cases</title>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "<ul id='test-list' style='width:100%;float:left'>" >> index.html
for file in `ls *.html`
do
	name=`echo $file | cut -d'.' -f1`
	if [ "$name" != "index" ]
		then
		ref=$name".png"
		echo  "<li>" >> index.html
		echo -n "<a href='$file'>"  >> index.html
		echo -n $name | tr '-' ' ' >> index.html
		echo -n "</a>" >> index.html
		
		echo  "</li>" >> index.html
	fi
done
echo "</ul>" >> index.html
echo "</body>" >> index.html
echo "</html>" >> index.html

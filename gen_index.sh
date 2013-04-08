#!/bin/bash


echo "<html>" > index.html
echo "<head>" >> index.html
echo "<title>CSS blending test cases</title>" >> index.html
echo "<script type='text/javascript' src='js/jquery-1.9.1.min.js'></script>" >> index.html
echo "<script type='text/javascript' src='js/tests.js'></script>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "<ul id='test-list' style='width:20%;float:left'>" >> index.html
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
echo "<iframe id='test-container' style='width:35%; height: 500px'></iframe>" >> index.html
echo "<iframe id='ref-container' style='width:35%;  height: 500px' src='about:blank'></iframe>" >> index.html
echo "</body>" >> index.html
echo "</html>" >> index.html

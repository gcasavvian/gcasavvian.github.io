#!/bin/bash

ls g*.html > ls.txt
sed -E 's|(.*)|<a href="\1">\1</a><br/>' ls.txt index.txt
echo "<html><head><title>GCA Savvian</title></head><body>" > index.html
cat index.txt >> index.html
echo "</body></html>" >> index.html

git add --all
git commit -m "auto commit"
git push 



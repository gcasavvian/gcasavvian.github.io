#!/bin/bash

ls g*_c*_a*.html > ls.txt
sed -E 's|(.*)\.html|<a href="\1.html">GCA: \1</a><br/>|g' ls.txt > index.txt

echo "<html><head><title>GCA Savvian</title></head><body>" > index.html
echo "<div>Abbreviations for GCA</div>" >> index.html
cat index.txt >> index.html
echo "<a href=\"http://www.gcasavvian.com/jp/\">GCA Savvian Corporation</a>" >> index.html
echo "</body></html>" >> index.html

git add --all
git commit -m "auto commit"
git push -u origin master




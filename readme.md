# Common Commands

### find all files and use envsubst
```
find "directory" -name "###.tmpl" --exec bash -c 'nvsubst < $1 > ${1%.tmpl}' _ {} \;
```

### use sed to get file name
echo "./page-components/Home/DownloadSection/index.stories" | sed 's/.###\///

### tr
tr \[:lower:] \[:upper:]
tr \[:lower] \[:upper] | tr \\t \, | tr -s \\n . # -s for repeating \n

### sort
sort -k <column number. ...
sort -M months #sort by month
sort -n -k 2 -t \, rivers # -n by number, -t separate char,
sort -u -f fruints.txt # -u for unique
sort -c #check sort

### uniq

### cut
cut -f 1 -d \, country.csv
cut -s -f 1,2 -d\, country.csv
cat country.csv | rev | cut -f 1 -d \, | rev #get last column

### xargs
 echo pof tut com | xargs -n 1 echo
 
### sed
sed \
-e 's/Book: //' \
-e 's/Author: //' \
-e 's/-/by/' \
-e '1 i Books you must read' \
-e '1 i --------------------'\
classic_reads
sed -e '10,30d' classic_reads
sed -n '1,5p' classic_reads
ls -al | sed -n '/^d/p' . # list directory only, p for print

### awk
FS: field separator, default \t
OFS: output field separator
RS: record separator, default \n
$0: whole line, $1.. 
NF: number of fields
NR: current line number
FILENAME: filename
print(), length(), substr(), gsub(), index(), tolower(), 
gusb - replacement 
awk samples:
aws 'BEGIN{FS=",";OFS="\T"} {print $1 $3}' ...
ls -l | awk 'BEGIN {SUM=0} {SUM += $5} END{print SUM}'
echo "This is my test" \
  | awk '{ if (length($0) > 10) print "string is too long"; else print length($0) }'
awk 'BEGIN{IGNORECASE=1;FS=",";OFS="|"} /Dollar/ {print NR,"-",$0}' currencies.csv
apache logs processing:
cat apache_logs| awk '{print $9}'|sort|uniq -c #get statuscode and count
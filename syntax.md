```
#!/bin/sh

if [[ conditions ]]; then
  <code_block>
fi
```
```
while <condition>
do 
  <code block>
done
```
-----------
$@ parameter as one value
[[ ! -f 'filename' ]] # check file exist

------
### string compares
```
# string includes
name="xz1"
if [[ "$name" == "xz"* ]]; then
fi
```
[check strings](https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/)

### reference
[bash tutorial](https://tecadmin.net/tutorial/bash-scripting/)
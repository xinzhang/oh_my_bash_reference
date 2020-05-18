## ${}

* % chop from end
* \# chop from begining

```
i=image.jpg
convert $i ${i%jpg}png

```

```
$ a="Hello World!"
$ echo Goodbye${a#Hello}
Goodbye World!
```

```
var=abc.jpg
echo ${var%jpg}gif  #abc.gif
echo a${var#abc} #a.jpg
echo ${var::3} #abc
echo ${var:2:4} #c.jp #zero based
```


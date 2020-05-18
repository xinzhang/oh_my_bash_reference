
#!/bin/bash
 
str="This is the main string"
 
if [[ $str = *main* ]]; then
  echo "Yes"
fi

### mutliple words ###
str="This is the main string"
 
if [[ $str = *"is the main"* ]]; then
  echo "Yes"
fi
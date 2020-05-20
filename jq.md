## JQ Usage

### endpoint 
curl -s "https://jobs.github.com/positions.json?description=nodejs"
wget -qO-  "https://jobs.github.com/positions.json?description=nodejs" 

### 
* | jq .
* | jq '.[].location'
* | jq '.[] | .url, .company'
*  | jq '.[] | select(.location=="Remote")'
*  | jq '.[] | select(.location=="Remote") | {company:.company, url:.url, title:.title}'


### get the yaml data

```
 k get deployment --no-headers | awk '{print $1}' | xargs -I % kubectl get deployment -n kube-infra -o yaml % | grep -A 3 apiVersion
```

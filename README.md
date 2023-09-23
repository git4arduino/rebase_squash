```
mkdir merge_or_rebase
cd merge_or_rebase
git init
echo "My fancy Code" > dht20.ino
git add dht20.ino
git commit -m "project init"
```

```
git switch -c dev
echo "graphics content" >> graphics.ino
git add .
git commit -m "graphics"
echo "wifi content" >> wifi.h
git add wifi.h
git commit -m "wifi.h"
git log
```

```
git switch main
nano dht20.ino
git add .
git commit -m "dht20 edit"
```

```
git switch dev
git merge main
git log --oneline
```

## Rebase

```
git switch main
git log
git checkout -b main2 bc849fcc5cc23243b8e464e06ee67b7b8626399
git log
```

```
git switch -c dev2
echo "graphics content" >> graphics.ino
git add .
git commit -m "graphics"
echo "wifi content" >> wifi.h
git add wifi.h
git commit -m "wifi.h"
git log
```

```
git switch main
nano dht20.ino
git add .
git commit -m "dht20 edit"
```


```
git switch dev2
git rebase main2
git log --oneline
```

### merge log
```
24cd4be (HEAD -> dev) Merge branch 'main' into dev
9c239ad (main) dht20 edit
fa4a4a3 wifi.h
3639229 graphics
bc849fc project init
```

### rebase log
```
1c52b9d (HEAD -> dev2) wifi.h
0d44166 graphics
aa87407 (main2) dht20 edit
bc849fc project init
```

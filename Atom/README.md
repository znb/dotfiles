# Atom
Just a backup of Atom because YOLO


### Backup your existing plugins

```
apm list --installed --bare | grep '^[^@]\+' -o > packages.txt
```


### And the restore them

```
apm install --packages-file packages.txt
```

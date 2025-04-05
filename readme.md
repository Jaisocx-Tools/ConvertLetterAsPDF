# CV PROJECT HTML TO PDF UNDER DOCKERIZED JAISOCX WEB SERVER

## INIT
```
docker-compose up -d
```


if princexml container error "architecture mismatch"
try other package, commented in the 
docker/princexml/Dockerfile, lines 25-27


## URL
```
edit /etc/hosts:
127.0.0.1    jaisocx
```

http://jaisocx:2297/


## GEN PDF
```
./command/genPdf.sh
```


## WHERE IS FILE IN .PDF

the file in .pdf format is in the folder:
```
${project_root}/pdf-output
```




# CV PROJECT HTML TO PDF UNDER DOCKERIZED JAISOCX WEB SERVER

## INIT
```
docker-compose up -d
```


if princexml container error "architecture mismatch"
try other package, commented in the 
docker/princexml/Dockerfile, lines 25-27


## IMPORT MYSQL DB
```
./command/importMysqlDump.sh
```


## URL
```
edit /etc/hosts:
127.0.0.1    jaisocx
```

http://jaisocx:2293/


## GEN PDF
```
./command/genPdf.sh
```


## WHERE IS CV IN .PDF

the cv in .pdf format is in the folder:
```
${project_root}/cv-output-pdf
```


## EXPORT MYSQL DB
```
./command/genMysqlDump.sh
```


## WHERE IS CV DB DUMP .SQL

in the folder:
```
${project_root}/docker/mysql/dumps
```


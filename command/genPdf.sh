#!/bin/bash

docker compose run princexml sh -c 'prince http://jaisocx/ --page-margin 3mm -o /pdf-output/letter.pdf --encrypt --owner-password "ppqEurXFXUFdhSDcM5MtqXfKVK2yaKV2cx#" --pdf-creator "ILLIA POLIANSKYI" --pdf-author "ILLIA POLIANSKYI" --pdf-title "Elias Polianskyi CV" --pdf-subject "Fullstack Web Developer"'
echo -e "\nFINISH\n\n"


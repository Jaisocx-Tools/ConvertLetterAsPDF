#!/bin/bash

docker compose run princexml sh -c 'prince http://letter:2297/letter_first/index.html --page-margin 3mm -o /var/pdf_doc/letter.pdf --encrypt --owner-password "Your password fro this pdf doc" --pdf-creator "Your Name" --pdf-author "Your Name" --pdf-title "The title of the pdf doc" --pdf-subject "Theme of the letter"'
echo -e "\nFINISH\n\n"


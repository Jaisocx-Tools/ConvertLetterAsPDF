#!/bin/bash

docker-compose exec mysql /bin/bash -c 'mysqldump --user=root --password=asd cv > /dumps/cv.sql'


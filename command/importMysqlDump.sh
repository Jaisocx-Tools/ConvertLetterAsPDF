#!/bin/bash

docker-compose exec mysql /bin/bash -c 'mysql --user=root --password=asd cv < /dumps/cv.sql'


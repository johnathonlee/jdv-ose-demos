#!/bin/bash

set -x

echo "Post PostgreSQL populating 'uscustomers' database"
PGPASSWORD=$POSTGRESQL_PASSWORD /usr/bin/psql -h $USCUSTOMERS_SERVICE_HOST -d $POSTGRESQL_DATABASE -U $POSTGRESQL_USERNAME -f ${HOME}/source/extensions/extras/uscustomers-psql.sql

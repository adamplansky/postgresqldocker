#!/usr/bin/env bash

set -ux

function psqlCmd(){
    docker exec -it my_postgres psql "user=postgres password=postgres dbname=postgres sslmode=disable" -c "$@"
}

users=( auth auth_test car car_test crawler crawler_test kurzy exchanger exchanger_test rmotor_companies rmotor_companies_test location location_test cmd_test )
for dbName in "${users[@]}"
do
    #psqlCmd "CREATE USER $usr WITH PASSWORD '$usr'"
    psqlCmd "CREATE DATABASE $dbName OWNER postgres"
    psqlCmd "GRANT CONNECT ON DATABASE postgres TO postgres"
    psqlCmd "GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO postgres"
    psqlCmd "ALTER ROLE postgres SUPERUSER;"
done




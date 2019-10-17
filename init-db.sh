#!/usr/bin/env bash

set -ux

function psqlCmd(){
    docker exec -it my_postgres psql "user=postgres password=postgres dbname=postgres sslmode=disable" -c "$@"
}

users=( auth auth_test )
for usr in "${users[@]}"
do
    psqlCmd "CREATE USER $usr WITH PASSWORD '$usr'"
    psqlCmd "CREATE DATABASE $usr OWNER $usr"
    psqlCmd "GRANT CONNECT ON DATABASE $usr TO $usr"
    psqlCmd "GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO $usr"
done




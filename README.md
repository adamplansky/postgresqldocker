## creating db
```bash
./init-db.sh
```

## Connecting to db
```bash
docker exec -it my_postgres psql "user=postgres password=postgres dbname=postgres sslmode=disable" -c '\l'
docker exec -it my_postgres psql "user=postgres password=postgres dbname=postgres sslmode=disable"
```
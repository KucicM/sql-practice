
## Setup database

``` bash
docker pull postgres
```

## Start database

``` bash
docker run --name pg-docker -e POSTGRES_PASSWORD=password -d -p 5432:5432 postgres
```

## Load data to database
``` bash
PGPASSWORD=password psql -h localhost -U postgres -d postgres < northwind2016.sql
```

## run exX.sql
``` bash
PGPASSWORD=password psql -h localhost -U postgres -d postgres < ex1.sql
```

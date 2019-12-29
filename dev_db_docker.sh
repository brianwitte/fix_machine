#!/usr/bin/env bash
docker rm fix_machine_psql
docker run --name fix_machine_psql \
        -p 5432:5432 \
        -e POSTGRES_DB=fix_machine_dev\
        -e POSTGRES_PASSWORD=postgres\
        -d postgres

# docker exec -it fix_machine_psql bash
# psql -U postgres

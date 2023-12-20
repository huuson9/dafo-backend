FROM mysql:8.0

COPY dafo.sql /docker-entrypoint-initdb.d/

FROM mysql:8

COPY bnu.sql /docker-entrypoint-initdb.d
RUN chown mysql:mysql -R /docker-entrypoint-initdb.d

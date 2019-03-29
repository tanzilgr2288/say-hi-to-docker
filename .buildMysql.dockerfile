# get Mysql Image from Docker Resitry
FROM mysql:5.6

# Inject sql file do mysql for execute when app start
COPY test.sql /docker-entrypoint-initdb.d/test.sql
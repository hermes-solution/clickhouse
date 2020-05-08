FROM yandex/clickhouse-server

COPY init-hermesdb.sql /docker-entrypoint-initdb.d/init-hermesdb.sql
COPY hermes_conf.xml /etc/clickhouse-server/config.d/hermes_conf.xml
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 9000 8123 9009
ENTRYPOINT ["/entrypoint.sh"]
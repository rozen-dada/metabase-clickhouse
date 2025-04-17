ARG METABASE_VERSION=v1.53.7.5
FROM docker.io/metabase/metabase-enterprise:$METABASE_VERSION

RUN adduser --disabled-password metabase

WORKDIR /app

ARG ARG METABASE_CLICKHOUSE_DRIVER_VERSION=1.52.0
ADD --chown=metabase --chmod=744 https://github.com/ClickHouse/metabase-clickhouse-driver/releases/download/$METABASE_CLICKHOUSE_DRIVER_VERSION/clickhouse.metabase-driver.jar plugins/

USER metabase
EXPOSE 3000

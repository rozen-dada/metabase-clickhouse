ARG METABASE_VERSION=v1.57.x
FROM docker.io/metabase/metabase-enterprise:${METABASE_VERSION}

RUN adduser --disabled-password metabase

WORKDIR /app

USER metabase
EXPOSE 3000

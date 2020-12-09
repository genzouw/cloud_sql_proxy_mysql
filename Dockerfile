FROM google/cloud-sdk:320.0.0-alpine

LABEL maintainer "genzouw <genzouw@gmail.com>"

ENV OS docker-container

RUN apk add \
  bash \
  mysql-client \
  && curl -so /usr/bin/cloud_sql_proxy https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 \
  && chmod 755 /usr/bin/cloud_sql_proxy \
  && rm -f /var/cache/apk/* \
  ;

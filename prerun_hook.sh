#! /bin/bash

set -e

printf "
port: ${PORT}
managementApiSecret: ${PRISMA_MANAGEMENT_API_SECRET}
databases:
  default:
    connector: postgres
    host: ${DATABASE_HOST}
    port: ${DATABASE_PORT}
    database: ${DATABASE_NAME}
    user: ${DATABASE_USER}
    password: ${DATABASE_PASSWORD}
    migrations: true
" >> ${PRISMA_CONFIG_PATH}
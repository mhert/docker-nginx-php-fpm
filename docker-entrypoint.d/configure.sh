#!/usr/bin/env sh
set -e

# Get all defined env vars
ENV_VARS=""
for VAR in `env`; do
    VAR=`echo $VAR | cut -f1 -d"="`
    ENV_VARS="${ENV_VARS} \\\$${VAR}"
done

# Replace all defined env vars in nginx config template
envsubst "$ENV_VARS" < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

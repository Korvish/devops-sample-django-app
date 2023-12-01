#!/bin/bash -x

sleep 5 && python3 manage.py migrate;

exec "$@"
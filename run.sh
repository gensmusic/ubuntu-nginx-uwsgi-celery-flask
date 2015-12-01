#!/bin/bash

set -e

# chown -R uwsgi.uwsgi /var/uwsgi

# if [ -n "$WSGI_MODULE" ]; then # a wsgi module is given
#   exec /usr/local/bin/uwsgi --processes $NUM_PROCESSES --threads $NUM_THREADS \
#        --stats 0.0.0.0:9002 --uwsgi-socket 0.0.0.0:9000 \
#        --uid uwsgi --chdir /var/uwsgi --module=$WSGI_MODULE \
#        $ADDITIONAL_ARGUMENTS $ADDITIONAL_USER_ARGUMENTS
# elif [ -n "$WSGI_FILE" ]; then # a wsgi file is given
#   exec /usr/local/bin/uwsgi --processes $NUM_PROCESSES --threads $NUM_THREADS \
#        --stats 0.0.0.0:9002 --uwsgi-socket 0.0.0.0:9000 \
#        --uid uwsgi --chdir /var/uwsgi --wsgi-file="$WSGI_FILE" \
#        $ADDITIONAL_ARGUMENTS $ADDITIONAL_USER_ARGUMENTS
# else
#   echo "No WSGI module or file is specified."
# fi

echo "no running"
#!/bin/sh

for arg in "$@"
do
    case $arg in
        -c)
            exec /bin/sh "$@"
        ;;
        *)
            exec "$@"
        ;;
    esac
done

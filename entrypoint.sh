#!/bin/bash

case "$1" in
    build)
        echo "Building production...";
        npm run build $@;
        ;;
    start)
        echo "Start dev server...";
        npm start $@;
        ;;
    bash)
        bash;
        ;;
    *)
        echo "Unknown cmd $1"
        exit 1
esac
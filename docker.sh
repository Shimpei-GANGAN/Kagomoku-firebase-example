# !/bin/sh

if [ "$1" = "start" ]; then
    echo "start docker container"
    docker-compose up -d
    docker-compose exec app sh
elif [ "$1" = "stop" ] ; then
    echo "stop docker container"
    docker-compose down
    # yes | docker container prune
elif [ "$1" = "build" ]; then
    echo "start docker container (--build)"
    docker-compose build
fi

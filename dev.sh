#!/bin/bash

if [ -e "$DATABASE_FILENAME" ]; then
    echo "Content exists. Skipping migration..."
else
    echo "Couldn't find content. Running migration..."
    yarn db:import
fi

yarn develop

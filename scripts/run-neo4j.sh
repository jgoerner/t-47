#!/bin/sh

docker run \
    -p7474:7474 -p7687:7687 \
    -d \
    -v "$(pwd)"/data:/var/lib/neo4j/import \
    -v "$(pwd)"/plugins:/var/lib/neo4j/plugins \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:3.5.14

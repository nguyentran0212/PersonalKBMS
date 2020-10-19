docker run \
    --name testneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $PWD/data:/data \
    -v $PWD/logs:/logs \
    -v $PWD/import:/var/lib/neo4j/import \
    -v $PWD/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest
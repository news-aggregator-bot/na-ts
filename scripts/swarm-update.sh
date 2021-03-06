wget -q $1 -O docker-stack-na-ts.yml
echo "Copy nats.conf"
wget -q $2 -O ~/na/nats.conf
echo "Deploying new na-ts stack"
docker stack rm na-ts
docker stack deploy --compose-file docker-stack-na-ts.yml --with-registry-auth na-ts
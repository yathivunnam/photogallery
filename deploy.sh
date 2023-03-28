echo "Starting to deploy docker image..."
echo $DOCKER_IMAGE

docker pull $DOCKER_IMAGE
docker rm -f $(docker ps -aq)
docker run -d -p 5000:5000 $DOCKER_IMAGE

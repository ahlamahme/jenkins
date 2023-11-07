# jenkins

1-build latest jenkins image using docker file 
```bash
docker build -t dockerfile .
```
2-Run container from jenkins image 
```bash
docker run --name jenkins-blueocean --restart=on-failure --detach   --network jenkins --env DOCKER_HOST=tcp://docker:2376   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1   --publish 8080:8080 --publish 50000:50000   --volume jenkins-data:/var/jenkins_home   --volume jenkins-docker-certs:/certs/client:ro dockerfile
```
3-start container 
```
http://localhost:8080
```
4-exec container 
```bash
docker exec -it < container name > bash
```



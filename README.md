Step:1 
   -First we created ACR with name of vinayakumar
Step:2 
  - we created shell script with name of Script.sh
  - we created multi-stage Dockerfile with name of Dockerfile
  - building the image using the Dockerfile
    cmd: docker build -t test .
  - creating the container using build image name-test
     cmd: docker run -it -d --name test test:1.0 /bin/bash
Step:3
  - creating tag using the image
    cmd : docker tag test:latest vinayakumar.azurecr.io/test
  - pushing the image to ACR
    cmd: az login
    cmd: az acr --name vinayakumar
    cmd: docker push vinayakumar.azurecr.io/test
Step:4
 -creating the github repository with name of ABC-1611
 - pushing the all file to git repo
    cmd : git init
    cmd : git add .
   cmd : git commit -m "pushing"
   cmd : git push origin -u master
   

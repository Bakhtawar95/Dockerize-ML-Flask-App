# dockerize-ml-model
Dockerize and deploy a Machine Learning model and serve as a REST API using Flask

## Prerequisites
 To build this project on your machine, you must have
 - [Docker Engine](https://docs.docker.com/desktop/install/windows-install/) running
 - [WSL](https://learn.microsoft.com/en-gb/windows/wsl/install) / Linux
 
 
 ## Steps to build the project
 To build the project, you can either use the DockerFile or .tar file
 
 ### Using DockerFile:
      1.Copy Dockerfile and Stress_Detection folder in your working directory.
      2.Open command prompt in the working directory.
      3.Build docker image using the command:
        
        docker build -t ml_proj .
       
      4.To see the image, use command:
        docker images
      5.Run the container using:
        docker run -it --name ml_proj_test -p 8888:8080 ml_proj:latest
        
      6.As the container starts running, it launches the Flask API
      
      http://127.0.0.1:8888
        
      

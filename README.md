# dockerize-ml-model
Dockerize and deploy a Machine Learning model and serve as a REST API using Flask

# About Docker
      (Skip -- if you already know)
Docker is a containerization tool that helps applications to run in an isolated environment. To deploy a model/application in a host system or multiple systems, we need to install the required packages and dependencies in every system. To avoid this installation process, we define all dependecies in one DockerFile and execute it to create a Docker Image. This image can be used in any system to run the docker container, which automatically launches the application. 
Also, a container doesn't have its own OS, but shares host's kernel. That's why it can load in seconds, boots faster and needs less resources compared to VM.

# Project Overview
This project starts by training different machine learning models on our [dataset](). Then MLflow chooses the best model out of these and saves it. This best model is then wrapped in a user interactive Flask web application. Then a docker image is created containing everything needed to run the application: the application code, libraries, tools, dependencies and other files. This image will be used to run the application in container.

## Prerequisites
 To build this project on your machine, you must have
 - [Docker Engine](https://docs.docker.com/desktop/install/windows-install/) running
 - [WSL](https://learn.microsoft.com/en-gb/windows/wsl/install) / Linux
 
 ## Steps to build the project
 To build the project, you can either use the DockerFile or .tar file.
 
 ### Using DockerFile:
      1.Copy Dockerfile and Stress_Detection folder in your working directory.
      2.Open command prompt in the working directory.
      3.Build docker image using the command:
        
        docker build -t ml_proj .
       
      4.To see the image, use command:
        docker images
      5.Run the container using:
        docker run -it --name ml_proj_test -p 8888:8080 ml_proj:latest
        
      6.As the container starts running, it launches the Flask API on the port 8080 of the docker       engine. In the application code, this port is bound to 8888 of hosts's local machine. To           view the application, go to URL:
      
                  http://127.0.0.1:8888
        
      

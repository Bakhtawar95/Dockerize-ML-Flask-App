FROM continuumio/anaconda3:latest

WORKDIR /home

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip install mlflow
COPY Stress_Detection .

CMD ["python","API.py"]

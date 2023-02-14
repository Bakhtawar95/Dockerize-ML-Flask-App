FROM continuumio/anaconda3:latest

WORKDIR /home

RUN pip install mlflow
COPY Stress_Detection .

CMD ["python","API.py"]

FROM nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu20.04

CMD nvidia-smi


RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y



WORKDIR /usr/src/app


RUN pip3 install --upgrade pip

COPY ./hello.py ./

CMD ["python3", "hello.py"]

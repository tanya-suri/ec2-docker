FROM nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu20.04

CMD nvidia-smi


RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install libsm6 libxext6 -y


WORKDIR /usr/src/app

COPY ./requirements.txt ./
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY ./train.py ./
COPY ./config_cc.py ./
COPY ./model_cc.py ./
COPY ./dataloader_cc.py ./
COPY ./utils_cc.py ./

CMD ["python3", "hello.py"]

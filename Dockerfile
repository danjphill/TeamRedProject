# start by pulling the python image
FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install unzip -y

RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    python3.8 python3-pip python3.8-dev

WORKDIR /data

ENV TEAM_RED=1

RUN git clone https://github.com/danjphill/TeamRedProject2.git 

WORKDIR /data/TeamRedProject2

RUN unzip model.zip

RUN pip3 install flask
RUN pip3 install torch
RUN pip3 install torchvision
RUN pip3 install torch-geometric
RUN pip3 install torch-scatter torch-sparse -f https://data.pyg.org/whl/torch-1.11.0+cpu.html



EXPOSE 5005

CMD [ "python3","app.py" ]

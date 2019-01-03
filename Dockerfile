FROM tensorflow/tensorflow:1.12.0-gpu-py3

RUN apt-get update
RUN apt-get -y install vim

#For audio drivers
RUN apt-get -y install libportaudio2
# Had to include update again because the older update was in cache and was not executing
RUN apt-get update
RUN apt-get -y install alsa-base alsa-utils pulseaudio

WORKDIR /home/python-requirements
COPY python-requirements/requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /home

CMD ["bash"]


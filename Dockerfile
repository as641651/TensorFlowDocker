FROM tensorflow/tensorflow:1.12.0-gpu-py3

RUN apt-get update
RUN apt-get -y install vim

WORKDIR /home/python-requirements
COPY python-requirements/requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /home

CMD ["bash"]


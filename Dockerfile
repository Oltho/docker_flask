FROM ubuntu:latest
MAINTAINER Thomas Tran <tran.thomasteddy@gmail.com>

RUN apt-get update
#RUN apt-get -y upgrade

RUN apt-get install -y python3 python3-pip build-essential

COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt

COPY ./app /app

EXPOSE 80

CMD ["python", "/app/main.py"]

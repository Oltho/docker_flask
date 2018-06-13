FROM ubuntu:latest
MAINTAINER Thomas Tran <tran.thomasteddy@gmail.com>

RUN apt-get update
#RUN apt-get -y upgrade

RUN apt-get install -y python3 python3-pip build-essential

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "./main.py"]

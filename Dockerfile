FROM ubuntu:16.04

EXPOSE 6666

RUN apt-get update && apt-get install -y python3 python-pip

RUN pip3 install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
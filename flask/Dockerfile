FROM python:3.9-alpine

RUN adduser -D devops
USER devops

RUN mkdir /opt/flask

WORKDIR /opt/flask
ADD . /opt/flask

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "-m", "./main.py"]

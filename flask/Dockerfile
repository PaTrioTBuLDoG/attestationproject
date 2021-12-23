FROM python:3.9-alpine

RUN adduser -D devops
USER devops

RUN mkdir /home/devops/flask

WORKDIR /home/devops/flask
ADD . /home/devops/flask

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "/home/devops/flask/main.py"]

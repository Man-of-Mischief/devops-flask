FROM alpine:latest

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk update

RUN apk add python3 py3-pip --no-cache

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]

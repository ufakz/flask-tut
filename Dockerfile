FROM python:3.8-alpine

RUN apk update

WORKDIR /usr/src/app
COPY requirements.txt bootstrap.sh ./
COPY cashman ./cashman

RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["/usr/src/app/bootstrap.sh"]
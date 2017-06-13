FROM python:alpine
MAINTAINER Marcel O'Neil <marcel@marceloneil.com>

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN pip install -e .

ENV FLASK_APP updater.app
ENTRYPOINT ["flask"]

EXPOSE 5000
CMD ["import_devices"]
CMD ["run", "--host=0.0.0.0"]


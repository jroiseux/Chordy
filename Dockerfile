FROM debian

RUN  apt-get update && apt-get install -y python3 python3-pip libmariadbclient-dev mysql-client

ADD ./src /app

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN pip3 install -r /app/requirements.txt

WORKDIR /app

ENTRYPOINT tail -f /dev/null


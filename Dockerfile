FROM debian

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN  apt-get update && apt-get install -y python3 python3-pip libmariadbclient-dev mysql-client

ADD ./src /app

RUN pip3 install -r /app/requirements.txt

ENV FLASK_DEBUG=1

WORKDIR /app

ENTRYPOINT bash -c "while ! mysql -h mysql -u myuser -ppassword -e 'SELECT version();'; do sleep 1; done; \
            flask db init; \
            flask db migrate; \
            flask db upgrade; \
            mysql -h mysql -u myuser -ppassword < init.sql; \
            flask run -h 0.0.0.0"


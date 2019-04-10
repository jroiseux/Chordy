# Do this for dev

```bash
# Only do this if the Dockerfile changes
docker build -t flask-dev -f Dockerfile.dev .

# Start the app
docker-compose -f docker-compose.dev.yaml up -d

# Get terminal in flask container
docker exec -it chordytwo_flask_1 bash

# Init DB
flask db init
flask db migrate
flask db upgrade

# Import data
mysql -f -h mysql -u myuser -ppassword < init.sql

# Run webserver
flask run -h 0.0.0.0
```

# Do this to run

```bash
# Only do this if the Dockerfile changes
docker build -t flask .

# Start the app
docker-compose up -d
```

# Do this to wipe the db

```bash
rm -rf .mysql_data

```
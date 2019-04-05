# Do this

```bash
# Build and run containers
docker build -t flask .
docker-compose up -d

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
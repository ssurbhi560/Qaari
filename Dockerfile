# Use Debian Buster with Python 3.9.1
FROM python:3.6-alpine

RUN apk update
RUN apk add postgresql-dev gcc python3-dev musl-dev
# Copy requirements first to  levarage Docker caching
COPY requirements.txt requirements.txt

# Install pip packages
RUN python -m venv qaari
RUN qaari/bin/pip install -r requirements.txt
RUN qaari/bin/pip install gunicorn pymysql

# Create and use a new user, so we don't user 'root' user
RUN adduser -D qaari
WORKDIR /home/qaari
USER app

# Expose port 80 <-- Optional but a good practice

# Copy the rest of the code inside the container
COPY app app
COPY migrations migrations


ENV FLASK_APP qaari.py

USER qaari

EXPOSE 5000
s
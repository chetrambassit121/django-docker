FROM python:3.8-alpine
ENV PYTHONUNBUFFERED=1
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
WORKDIR /django
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt








## used with mysql DB
# FROM python:3.8
# ENV PYTHONUNBUFFERED=1
# WORKDIR /django
# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt








# # used with postgressql DB 
# FROM python:3.8-slim-buster
# ENV PYTHONUNBUFFERED=1
# WORKDIR /django
# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt









# FROM python:3.8-slim-buster

# WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt

# COPY . .

# CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]
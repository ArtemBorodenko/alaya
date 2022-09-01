FROM python:alpine3.15

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

RUN mkdir /app

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /app

CMD [ "python3", "/alaya/manage.py", "runserver", "0.0.0.0:8000", "--settings=alaya.settings"]




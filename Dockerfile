FROM python:alpine3.15
MAINTAINER artemborodenko

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /alaya
WORKDIR /alaya
COPY ./alaya /alaya
COPY ./kubernetes_deployment /alaya

CMD [ "python3", "/alaya/manage.py", "runserver", "0.0.0.0:8000", "--settings=alaya.settings"]

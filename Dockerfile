FROM python:alpine3.15

ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "/alaya/manage.py", "runserver", "0.0.0.0:8000"]


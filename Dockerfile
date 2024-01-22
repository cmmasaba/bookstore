FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /bookstore

COPY Pipfile Pipfile.lock /bookstore/
RUN pip install pipenv && pipenv install --system

COPY . /bookstore/
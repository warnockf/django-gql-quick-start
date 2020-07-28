FROM python:3-buster

RUN mkdir /code
WORKDIR /code

ENV POETRY_HOME="/opt/poetry"
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH="$PATH:$POETRY_HOME/bin"

COPY poetry.lock pyproject.toml /code/
RUN  poetry config virtualenvs.create false \
  && poetry install

COPY . /code/
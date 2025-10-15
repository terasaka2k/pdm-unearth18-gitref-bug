FROM python:3.13

RUN pip install pdm==2.26.0
# RUN pip install unearth==0.17.5


COPY pyproject.toml .
RUN pdm lock

RUN pdm sync

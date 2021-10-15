FROM python:3.11-rc-slim

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN pip install .

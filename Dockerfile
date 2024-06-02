# syntax=docker/dockerfile:1

FROM python:3.11
WORKDIR /app
COPY /app .
RUN pip install -r requirements.txt
ENV FLASK_APP=app2.py
CMD ["flask","run","--host=0.0.0.0"]
EXPOSE 5000

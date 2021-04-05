FROM python:stretch

COPY ./requirements.txt /app/requirements.txt

# change working directory
WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD ["gunicorn", "-b", ":8080", "main:APP"]

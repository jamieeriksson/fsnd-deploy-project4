FROM python:3.7-stretch

WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
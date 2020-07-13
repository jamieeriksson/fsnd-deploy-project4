FROM python:3.7-stretch

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pyjwt
RUN pip install gunicorn
RUN pip install pytest
RUN pip install flask

COPY . .

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
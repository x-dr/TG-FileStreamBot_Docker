FROM python:alpine3.15


RUN git clone https://github.com/EverythingSuckz/TG-FileStreamBot.git /app

WORKDIR /app

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3","-m","WebStreamer"]




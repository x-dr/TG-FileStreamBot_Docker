FROM python:alpine3.15

RUN apk add --no-cache --update git bash\                          
    && git clone https://github.com/EverythingSuckz/TG-FileStreamBot.git /app \
    && pip3 install --no-cache-dir -r requirements.txt \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 


WORKDIR /app


CMD ["python3","-m","WebStreamer"]




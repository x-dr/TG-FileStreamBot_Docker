FROM python:alpine3.15


COPY start.sh /app/start.sh

RUN apk add --no-cache --update git bash tzdata\                          
    && git clone https://github.com/EverythingSuckz/TG-FileStreamBot.git /app \
    && pip3 install --no-cache-dir -q -r /app/requirements.txt \
    && rm -rf /var/cache/apk/* \
    && chmod +x /app/start.sh \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 


WORKDIR /app


CMD ["python3","-m","WebStreamer"]




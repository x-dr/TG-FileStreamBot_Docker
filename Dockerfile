FROM python:alpine3.15

# Install dependencies

RUN apk add --no-cache --update git bash  wget\                          
    && git clone https://github.com/EverythingSuckz/TG-FileStreamBot.git /app \
    && pip3 install --no-cache-dir -q -r /app/requirements.txt \
    && rm -rf /var/cache/apk/* \
    && wget -O /app/start.sh https://github.com/x-dr/TG-FileStreamBot_Docker/blob/main/start.sh \
    && chmod +x /app/start.sh \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 


WORKDIR /app

# Run the app
CMD ["python3","-m","WebStreamer"]




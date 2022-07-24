FROM python:3.8.13-alpine3.15

# Install dependencies
WORKDIR /app

RUN apk add --no-cache --update  bash  \                          
    && pip3 install --no-cache-dir -q -r requirements.txt \
    && rm -rf /var/cache/apk/* \
    && chmod +x start.sh \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 


WORKDIR /app

# Run the app
CMD ["python3","-m","WebStreamer"]




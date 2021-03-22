FROM nginx:stable-alpine
RUN apk add python3
COPY static-html-directory/index.html /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /app -p

WORKDIR /app

COPY start.sh .
COPY test.py .

EXPOSE 8000

RUN chmod +x /app/start.sh

RUN ls -la

CMD /app/start.sh

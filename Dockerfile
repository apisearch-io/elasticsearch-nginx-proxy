FROM nginx:alpine
WORKDIR /

COPY nginx.conf /etc/nginx/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh

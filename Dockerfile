FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY files/* /usr/share/nginx/html/

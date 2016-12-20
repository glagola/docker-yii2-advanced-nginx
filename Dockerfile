FROM nginx:1.10.2-alpine

MAINTAINER Igor Glagola <igor@glagola.ru>

RUN rm -v /etc/nginx/conf.d/default.conf \
 && mkdir -p /var/www/frontend/runtime/logs \
 && mkdir -p /var/www/backend/runtime/logs

ADD ./frontend.conf /etc/nginx/conf.d/frontend.conf
ADD ./backend.conf /etc/nginx/conf.d/backend.conf

EXPOSE 80

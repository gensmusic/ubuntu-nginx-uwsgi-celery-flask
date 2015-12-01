# A container which runs nginx, uwsgi and flask.
FROM ubuntu:14.04

maintainer gensmusic <gensmusic@163.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:nginx/stable && \
    apt-get update && \
    apt-get install -y build-essential git python python-dev python-setuptools \
            nginx supervisor libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

RUN easy_install pip && \
    pip install uwsgi celery

RUN mkdir -p /var/log/uwsgi && \
    mkdir -p /var/log/celery && \
    mkdir -p /var/lib/celery && \
    touch /var/lib/celery/beat.db

# setup all the configfiles
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
# RUN ln -s /data/nginx.conf /etc/nginx/sites-enabled/
# RUN ln -s /data/supervisor.conf /etc/supervisor/conf.d/

EXPOSE 80 443

# CMD ["supervisord", "-n"]

COPY run.sh /usr/local/bin/run.sh
CMD ["run.sh"]
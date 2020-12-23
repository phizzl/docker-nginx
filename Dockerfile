FROM nginx:1.19.6

LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apt-get update && \
    apt-get install -y libffi-dev libssl-dev ssl-cert && \
    apt-get clean all && \
    make-ssl-cert generate-default-snakeoil --force-overwrite && \
    apt-get purge -y libffi-dev libssl-dev && \
    apt-get autoremove -y && \
    apt-get clean all

FROM nginx:latest

LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apt-get update && \
    apt-get install -y python3-pip libffi-dev libssl-dev && \
    apt-get clean all && \
    pip3 install paramiko ansible && \
    apt-get purge -y libffi-dev libssl-dev && \
    apt-get autoremove -y && \
    apt-get clean all

FROM ubuntu:14.04
WORKDIR /tmp/
ADD "requirements.txt" ./
ADD "app.py" ./
RUN apt-get update && \
    apt-get upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y -q python-all python-pip && \
    pip install -qr requirements.txt && \
    mkdir /opt/webapp && \
    cp app.py /opt/webapp
EXPOSE 5000
CMD ["/opt/webapp/app.py"]


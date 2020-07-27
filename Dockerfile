FROM ubuntu:14.04
WORKDIR /tmp/
ADD "requirements.txt" ./
ADD "app.py" ./
RUN apt-get update && \
    apt-get upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y -q python-all python-pip && \
    pip install -qr requirements.txt
EXPOSE 5000
CMD ["app.py"]


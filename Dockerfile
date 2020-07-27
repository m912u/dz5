FROM ubuntu:14.04
WORKDIR /opt/webapp
ADD ./app  ./
RUN apt-get update && \
    apt-get upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y -q python-all python-pip && \
    pip install -qr /opt/webapp/requirements.txt
EXPOSE 5000
CMD ["python","app.py"]

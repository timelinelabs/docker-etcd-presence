FROM stackbrew/ubuntu:13.10
MAINTAINER Oliver Soell "oliver@timelinelabs.com"

RUN apt-get update -qq
RUN apt-get install -y python-pip python-dev libssl-dev python-openssl
RUN pip install python-etcd

ADD bin/etcd-presence /bin/etcd-presence

ENTRYPOINT ["/bin/etcd-presence"]
CMD ["-h"]

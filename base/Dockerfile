FROM radishgz/ubuntu144:jdk8 

RUN apt-get update -y && apt-get install -y git python2.6-dev \
make \
libkrb5-dev \
libxml2-dev \
libffi-dev \
libxslt-dev \
libsqlite3-dev \
libssl-dev \
libldap2-dev \
python-pip ant gcc g++ libkrb5-dev libffi-dev libmysqlclient-dev libssl-dev libsasl2-dev libsasl2-modules-gssapi-mit \
libsqlite3-dev libtidy-0.99-0 libxml2-dev libxslt-dev make libldap2-dev maven python-dev python-setuptools libgmp3-dev

RUN apt-get install -y python-software-properties software-properties-common

RUN add-apt-repository ppa:natecarlson/maven3
RUN apt-get update -y && sudo apt-get -y install maven3
RUN  ln -s /usr/bin/mvn3 /usr/bin/mvn
RUN apt-get --no-install-recommends install -y asciidoc

# Welcome to the official Hue (http://gethue.com) developer Dockerfile
FROM  radishgz/hue-docker:base
RUN locale-gen zh_CN.UTF-8

RUN git clone --branch  release-3.12.0 https://github.com/cloudera/hue.git 
#RUN git clone  https://github.com/radishgz/hue.git 
#ADD hue-release-4.1.0 hue
WORKDIR hue
RUN make -d apps
EXPOSE 8888
VOLUME /hue/desktop/
CMD ["build/env/bin/hue", "runserver_plus", "0.0.0.0:8888"]

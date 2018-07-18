# Welcome to the official Hue (http://gethue.com) developer Dockerfile
FROM  radishgz/hue-docker:base
RUN pip install logilab-astng 
#RUN git clone --branch  branch-3.12 https://github.com/cloudera/hue.git 

RUN git clone --branch  branch-4.2 https://github.com/radishgz/hue.git 
#RUN git clone  https://github.com/radishgz/hue.git 
#ADD hue-release-4.1.0 hue
WORKDIR hue
RUN make -d apps
EXPOSE 8888
VOLUME /hue/desktop/
CMD ["build/env/bin/hue", "runserver_plus", "0.0.0.0:8888"]

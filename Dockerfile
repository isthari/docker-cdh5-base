FROM isthari/java-7-base 

RUN apt-get install -y curl
RUN curl -s http://archive.cloudera.com/cdh5/debian/jessie/amd64/cdh/archive.key | apt-key add -
ADD cloudera.list /etc/apt/sources.list.d/cloudera.list
RUN cat /etc/apt/sources.list.d/cloudera.list

RUN apt-get update

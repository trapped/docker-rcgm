FROM ubuntu:12.04

# env
ENV HOME /root

# gcc, ruby, git
RUN apt-get update
RUN apt-get install -y ruby build-essential git-core wget rubygems

# mstrpc
RUN wget http://pellero.it/libmstrpc.so -o /usr/lib/libmstrpc.so
RUN wget http://pellero.it/mstrpc.h -o /usr/lib/mstrpc.h

# rake
RUN gem install rake


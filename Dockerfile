FROM ubuntu:12.04

# env
ENV HOME /root
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# locales for perl
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# gcc, ruby, git
RUN apt-get update
RUN apt-get install -y ruby build-essential git-core wget rubygems

# rake
RUN gem install rake

# GNU readline
RUN apt-get install -y libreadline6-dev

# mstrpc
RUN wget http://pellero.it/libmstrpc.so -O /usr/lib/libmstrpc.so
RUN wget http://pellero.it/mstrpc.h -O /usr/include/mstrpc.h


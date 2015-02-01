FROM ubuntu:14.04
MAINTAINER dev@cedvan.com

# Install apt-transport-https
RUN apt-get -qq update \
    && apt-get -qqy install apt-transport-https

# Install pip
RUN apt-get -qq update \
    && apt-get -qqy install python-setuptools python-dev build-essential \
    && easy_install pip \
    && pip install --upgrade virtualenv

# install fig
RUN pip install -U fig

WORKDIR /src

ENTRYPOINT ["fig"]
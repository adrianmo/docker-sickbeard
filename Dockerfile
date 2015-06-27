# Base image
FROM ubuntu:trusty

# Maintainer info
MAINTAINER Adrian Moreno <adrian.moreno@devcows.com>

# Update, upgrade, and install dependencies
RUN apt-get update &&\
  apt-get -y upgrade
  apt-get install -y python python-cheetah git-core

# Install CouchPotato
RUN cd /opt && \
  git clone -b master https://github.com/midgetspy/Sick-Beard.git

# Expose port
EXPOSE 8081

# Set working directory
WORKDIR /opt/Sick-Beard

# Run CouchPotato
ENTRYPOINT ["python", "SickBeard.py", "--datadir=/config"]

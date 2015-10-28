# Docker image of Apcera APC for my own purposes.
# This is unofficial, unauthorized, and unpleasant ;-)
#
# I'd like to switch this to Alpine Linux or similar small images.
FROM ubuntu
MAINTAINER Lloyd Dewolf <lloydooh@gmail.com>
RUN apt-get update && apt-get install -y \
        curl \
	unzip
RUN curl -O https://s3-us-west-2.amazonaws.com/apc-updates/apc_latest_linux_amd64.zip
RUN unzip apc_latest_linux_amd64.zip
RUN mv apc /bin/
RUN rm apc_latest_linux_amd64.zip

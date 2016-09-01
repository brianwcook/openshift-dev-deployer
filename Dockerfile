
FROM docker.io/centos/python-34-centos7

LABEL INSTALL /usr/bin/docker run --rm -v /:/host -u 0 --privileged -t osdd /opt/app-root/src/install.sh

docker build -t osdd-builder --no-cache  .

/usr/local/bin/s2i build ./s2i osdd-builder osdd

#
# atomic run should use these options
# sudo -s docker run --rm -it -v  /home/brian/.aws:/opt/app-root/src/.aws --privileged osdd
#
#
#
#
#

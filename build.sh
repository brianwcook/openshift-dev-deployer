docker build -t osdd-builder --no-cache  .

/usr/local/bin/s2i build ./s2i osdd-builder osdd

atomic install osdd

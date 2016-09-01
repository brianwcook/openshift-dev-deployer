

FROM

LABEL install echo "#!/bin/bash" > /usr/sbin/osdd &&   \
echo "/usr/bin/docker run --rm -it \\" >> /usr/sbin/osdd &&   \
echo "-v $(eval echo \"~$SUDO_USER\")/.aws:/opt/app-root/src/.aws \\" >> /usr/sbin/osdd && \
echo "-v $(eval echo \"~$SUDO_USER\")/.osdd:/opt/app-root/src/.osdd \\" >> /usr/sbin/osdd && \
echo "--privileged osdd" >> /usr/sbin/osdd  && \
chmod +x /usr/sbin/osdd

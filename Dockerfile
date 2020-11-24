# OS
FROM ubuntu:groovy
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt dist-upgrade -y && apt install -y firefox xdg-utils default-jdk desktop-file-utils icedtea-netx unzip
# eID
ADD https://eidas.minv.sk/download/Aplikacia_EID/linux/debian/Aplikacia_pre_eID_amd64_debian.tar.gz /tmp
RUN tar -C /tmp -xzf /tmp/Aplikacia_pre_eID_amd64_debian.tar.gz
RUN apt install -y /tmp/Aplikacia_pre_eID_amd64_debian.deb 
# DLauncher
ADD https://www.slovensko.sk/static/zep/apps/DLauncher.linux.x86_64.zip /tmp
RUN unzip -d /tmp /tmp/DLauncher.linux.x86_64.zip
RUN chmod 500 /tmp/DLauncher.linux.x86_64.run
# disig
ADD https://download.disigcdn.sk/cdn/products/websigner/disig-web-signer-1-0-7_1.1.5-3.ubuntu_amd64.deb /tmp/disig-web-signer.deb
RUN apt install -y /tmp/disig-web-signer.deb
RUN apt clean
ADD run.sh /
RUN chmod 500 /run.sh
CMD ["/run.sh"]
